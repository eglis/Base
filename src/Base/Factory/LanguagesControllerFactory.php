<?php
namespace Base\Factory;

use Base\Controller\LanguagesAdminController;
use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;

class LanguagesControllerFactory implements FactoryInterface
{
    /**
     * Create service
     *
     * @param ServiceLocatorInterface $serviceLocator
     *
     * @return mixed
     */
    public function createService(ServiceLocatorInterface $serviceLocator)
    {
        $realServiceLocator = $serviceLocator->getServiceLocator();
        $languagesService = $realServiceLocator->get('LanguagesService');
        $translator = $realServiceLocator->get('translator');
        $form = $realServiceLocator->get('FormElementManager')->get('Base\Form\LanguagesForm');
        $adapter = $realServiceLocator->get('Zend\Db\Adapter\Adapter');
        $datagrid = $realServiceLocator->get('ZfcDatagrid\Datagrid');
        $formfilter = $realServiceLocator->get('LanguagesFilter');

        return new LanguagesAdminController($languagesService, $form, $formfilter, $adapter, $datagrid, $translator);
    }
}