<?php
namespace BaseSettings\Factory;

use BaseSettings\Controller\IndexController;
use Zend\ServiceManager\FactoryInterface;
use Zend\ServiceManager\ServiceLocatorInterface;

class IndexControllerFactory implements FactoryInterface
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
        $service = $realServiceLocator->get('SettingsService');
        $translator = $realServiceLocator->get('translator');
        $form = $realServiceLocator->get('FormElementManager')->get('BaseSettings\Form\GenericForm');

        return new IndexController($service, $form, $translator);
    }
}