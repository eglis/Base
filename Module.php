<?php
/**
* Copyright (c) 2014 Shine Software.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* * Redistributions of source code must retain the above copyright
* notice, this list of conditions and the following disclaimer.
*
* * Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in
* the documentation and/or other materials provided with the
* distribution.
*
* * Neither the names of the copyright holders nor the names of the
* contributors may be used to endorse or promote products derived
* from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
* FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
* COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
* INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
* LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
* LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
* ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
*
* @package Cms
* @subpackage Entity
* @author Michelangelo Turillo <mturillo@shinesoftware.com>
* @copyright 2014 Michelangelo Turillo.
* @license http://www.opensource.org/licenses/bsd-license.php BSD License
* @link http://shinesoftware.com
* @version @@PACKAGE_VERSION@@
*/


namespace Base;

use Base\Listeners\LogListener;
use Base\Listeners\ViewListener;
use Base\Listeners\UserRegisterListener;
use Base\Entity\Languages;
use Base\Entity\Country;
use Base\Entity\Province;
use Base\Entity\Region;
use Base\Service\LanguagesService;
use Base\Entity\Settings;
use Base\Service\SettingsService;
use Base\Service\StatusService;
use Base\Service\MailService;
use Base\Entity\Status;
use Zend\Mvc\ModuleRouteListener;
use Zend\Mvc\MvcEvent;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\ResultSet\ResultSet;
use Zend\Session\Config\SessionConfig;
use Zend\Session\SessionManager;
use Zend\Session\Container;


class Module
{
    public function onBootstrap(MvcEvent $e)
    {
        $eventManager        = $e->getApplication()->getEventManager();
        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);
        $adapter = $e->getApplication()->getServiceManager()->get('Zend\Db\Adapter\Adapter');
        $sm = $e->getApplication()->getServiceManager();
        $config = $e->getApplication()->getServiceManager()->get('Configuration');
        $settings = $e->getApplication()->getServiceManager()->get('SettingsService');
        
        $eventManager->attach(new UserRegisterListener($adapter));
        $eventManager->attach(new LogListener());
        
        // Add ACL information to the Navigation view helper
        $authorize = $e->getApplication()->getServiceManager()->get('BjyAuthorize\Service\Authorize');
        $acl = $authorize->getAcl();
        $role = $authorize->getIdentity();
        \Zend\View\Helper\Navigation::setDefaultAcl($acl);
        \Zend\View\Helper\Navigation::setDefaultRole($role);
        
        // translating system
        $sessionConfig = new SessionConfig();
        $sessionConfig->setOptions($config['session']);
        $sessionManager = new SessionManager($sessionConfig);
        $sessionManager->start();
        $session = new Container('base');
        
        // Get the visitor language selection
        $translator = $e->getApplication()->getServiceManager()->get('translator');
        
        $locale = $session->offsetGet('locale'); // Get the locale
        if(empty($locale)){
            $locale = \Locale::getPrimaryLanguage(\Locale::getDefault()); // Get the locale
        }
        
        if (! empty($locale) && 2 == strlen($locale)) {
            $locale .= "_" . strtoupper($locale); 
        }
        
        $translator->setLocale($locale)->setFallbackLocale('en_US');
        
        $isCompress = $settings->getValueByParameter('Base', 'iscompressed');
        if($isCompress){
            $eventManager->getSharedManager()->attach('Zend\Mvc\Application', 'finish', array($this, 'compressHtml'), 1002);
        }
    }
    
    /**
     * found somewhere on stack overflow
     */
    private function compress($html)
    {
        preg_match_all('!(<(?:code|pre|script).*>[^<]+</(?:code|pre|script)>)!',$html,$pre);
        $html = preg_replace('!<(?:code|pre).*>[^<]+</(?:code|pre)>!', '#pre#', $html);
        $html = preg_replace('#<!–[^\[].+–>#', '', $html);
        $html = preg_replace('/[\r\n\t]+/', ' ', $html);
        $html = preg_replace('/>[\s]+</', '><', $html);
        $html = preg_replace('/[\s]+/', ' ', $html);
        if (!empty($pre[0])) {
            foreach ($pre[0] as $tag) {
                $html = preg_replace('!#pre#!', $tag, $html,1);
            }
        }
        return $html;
    }
    
    public function compressHtml(MvcEvent $e)
    {
        $response = $e->getResponse();
        // compress HTML output
        $response->setContent($this->compress($response->getContent()));
    }
    

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
    
    /**
     * Set the Services Manager items
     */
    public function getServiceConfig ()
    {
    	return array(
    			'factories' => array(
    					'LanguagesService' => function  ($sm)
    					{
    						$dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
    						$translator = $sm->get ( 'translator' );
    						$resultSetPrototype = new ResultSet();
    						$resultSetPrototype->setArrayObjectPrototype(new Languages());
    						$tableGateway = new TableGateway('base_languages', $dbAdapter, null, $resultSetPrototype);
    						$service = new \Base\Service\LanguagesService($tableGateway, $translator);
    						return $service;
    					},
    					
    					'CountryService' => function  ($sm)
    					{
    						$dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
    						$resultSetPrototype = new ResultSet();
    						$resultSetPrototype->setArrayObjectPrototype(new Country());
    						$tableGateway = new TableGateway('base_country', $dbAdapter, null, $resultSetPrototype);
    						$service = new \Base\Service\CountryService($tableGateway);
    						return $service;
    					},
    						
    					'ProvinceService' => function  ($sm)
    					{
    						$dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
    						$resultSetPrototype = new ResultSet();
    						$resultSetPrototype->setArrayObjectPrototype(new Province());
    						$tableGateway = new TableGateway('base_province', $dbAdapter, null, $resultSetPrototype);
    						$service = new \Base\Service\ProvinceService($tableGateway);
    						return $service;
    					},
    						
    					'RegionService' => function  ($sm)
    					{
    						$dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
    						$resultSetPrototype = new ResultSet();
    						$resultSetPrototype->setArrayObjectPrototype(new Region());
    						$tableGateway = new TableGateway('base_region', $dbAdapter, null, $resultSetPrototype);
    						$service = new \Base\Service\RegionService($tableGateway);
    						return $service;
    					},
    						
    					'SettingsService' => function  ($sm)
    					{
    						$dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
    						$resultSetPrototype = new ResultSet();
    						$resultSetPrototype->setArrayObjectPrototype(new Settings());
    						$tableGateway = new TableGateway('base_settings', $dbAdapter, null, $resultSetPrototype);
    						$service = new \Base\Service\SettingsService($tableGateway);
    						return $service;
    					},
    					
    					'StatusService' => function ($sm) {
	    					$dbAdapter = $sm->get ( 'Zend\Db\Adapter\Adapter' );
	    					$translator = $sm->get ( 'translator' );
	    					$resultSetPrototype = new ResultSet ();
	    					$resultSetPrototype->setArrayObjectPrototype ( new Status () );
	    					$tableGateway = new TableGateway ( 'base_status', $dbAdapter, null, $resultSetPrototype );
	    					$service = new \Base\Service\StatusService( $tableGateway, $translator );
	    					return $service;
    					},
    					
    					'MailService' => function ($sm) {
	    					$service = new \Base\Service\MailService( $sm->get('goaliomailservice_message'), $sm->get ( 'translator' ) );
	    					return $service;
    					},
    					
    					'GenericForm' => function  ($sm)
    					{
    						$form = new \Base\Form\GenericForm();
    						$form->setInputFilter($sm->get('GenericFilter'));
    						return $form;
    					},
    					'GenericFilter' => function  ($sm)
    					{
    						return new \Base\Form\GenericFilter();
    					},
    					
    					'LanguagesForm' => function  ($sm)
    					{
    						$form = new \Base\Form\LanguagesForm();
    						$form->setInputFilter($sm->get('LanguagesFilter'));
    						return $form;
    					},
    					'LanguagesFilter' => function  ($sm)
    					{
    						return new \Base\Form\LanguagesFilter();
    					},
    			  	),
    			 );
    }
    
    /**
     * Get the form elements
     */
    public function getFormElementConfig ()
    {
    	return array (
    			'factories' => array (
    					'Base\Form\Element\Languages' => function  ($sm)
    					{
    						$serviceLocator = $sm->getServiceLocator();
    						$translator = $sm->getServiceLocator()->get('translator');
    						$languagesService = $serviceLocator->get('LanguagesService');
    						$element = new \Base\Form\Element\Languages($languagesService, $translator);
    						return $element;
    					},
    					'Base\Form\Element\Country' => function  ($sm)
    					{
    						$serviceLocator = $sm->getServiceLocator();
    						$translator = $sm->getServiceLocator()->get('translator');
    						$countryService = $serviceLocator->get('CountryService');
    						$element = new \Base\Form\Element\Country($countryService, $translator);
    						return $element;
    					},
    					'Base\Form\Element\Yesno' => function  ($sm)
    					{
    						$translator = $sm->getServiceLocator()->get('translator');
    						$element = new \Base\Form\Element\Yesno($translator);
    						return $element;
    					},
    					'Base\Form\Element\Enadisabled' => function  ($sm)
    					{
    						$translator = $sm->getServiceLocator()->get('translator');
    						$element = new \Base\Form\Element\Enadisabled($translator);
    						return $element;
    					})
    				);
    }
    
    /**
     * Handle the flash messages of the project
     * @return multitype:multitype:NULL  |\Base\View\Helper\FlashMessages
     */
    public function getViewHelperConfig ()
    {
    	return array (
    			'factories' => array (
    					'flashMessage' => function  ($sm)
    					{
    						$flashmessenger = $sm->getServiceLocator()->get('ControllerPluginManager')->get('flashmessenger');
    						$message = new \Base\View\Helper\FlashMessages();
    						$message->setFlashMessenger($flashmessenger);
    						return $message;
    					}
    					)
    					);
    }
    
    
    public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\StandardAutoloader' => array(
               'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                    __NAMESPACE__ . "Settings" => __DIR__ . '/src/' . __NAMESPACE__ . "Settings",
                ),
            ),
        );
    }
}
