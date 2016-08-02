<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace BaseSettings\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use \BaseSettings\Form\GenericForm;
use \Base\Service\SettingsServiceInterface;

class IndexController extends AbstractActionController
{
	protected $recordService;
    protected $form;
    protected $translator;

	public function __construct(SettingsServiceInterface $recordService, GenericForm $form, $translator)
	{
        $this->recordService = $recordService;
        $this->form = $form;
        $this->translator = $translator;
	}
	
    public function indexAction ()
    {
    	$formData = array();

		// Get the custom settings of this module: "Base"
		$records = $this->recordService->findByModule('Base');
		
		if(!empty($records)){
			foreach ($records as $record){
				$formData[$record->getParameter()] = $record->getValue(); 
			}
		}
		
		// Fill the form with the data
		$this->form->setData($formData);
		
    	$viewModel = new ViewModel(array (
    			'form' => $this->form,
    	));
    
    	$viewModel->setTemplate('base-settings/index/index');
    	return $viewModel;
    }
	
    public function processAction ()
    {
    	if (! $this->request->isPost()) {
    		return $this->redirect()->toRoute('zfcadmin/base');
    	}
    	
    	try{
	    	$settingsEntity = new \Base\Entity\Settings();
	    	
	    	$post = $this->request->getPost();
	    	$this->form->setData($post);
	    	
	    	if (!$this->form->isValid()) {
	    	
	    		// Get the record by its id
	    		$viewModel = new ViewModel(array (
	    				'error' => true,
	    				'form' => $this->form,
	    		));
	    		$viewModel->setTemplate('base-settings/index/index');
	    		return $viewModel;
	    	}
	    	
	    	$data = $this->form->getData();
	    	
	    	// Cleanup the custom settings
	   		$this->recordService->cleanup('Base');
	    	
	    	foreach ($data as $parameter => $value){
	    		if($parameter == "submit"){
	    			continue;
	    		}
	
	    		$settingsEntity->setModule('Base');
	    		$settingsEntity->setParameter($parameter);
	    		$settingsEntity->setValue($value);
	    		$this->recordService->save($settingsEntity); // Save the data in the database
	    		
	    	}
	    	
	    	$this->flashMessenger()->setNamespace('success')->addMessage($this->translator->translate('The information have been saved.'));
    		
    	}catch(\Exception $e){
    		$this->flashMessenger()->setNamespace('error')->addMessage($e->getMessage());
    	}
    	
    	return $this->redirect()->toRoute('zfcadmin/base');
    }
}
