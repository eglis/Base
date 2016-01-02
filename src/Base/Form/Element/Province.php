<?php
namespace Base\Form\Element;

use Base\Service\ProvinceService;
use Zend\Form\Element\Select;
use Zend\ServiceManager\ServiceLocatorAwareInterface;
use Zend\ServiceManager\ServiceLocatorInterface;
use Zend\I18n\Translator\Translator;

class Province extends Select implements ServiceLocatorAwareInterface
{
    protected $serviceLocator;
    protected $translator;
    protected $provinceService;
    
    public function __construct(ProvinceService $provinceService, \Zend\Mvc\I18n\Translator $translator){
        parent::__construct();
        $this->provinceService = $provinceService;
        $this->translator = $translator;
    }
    
    public function init()
    {
        $data = array();
        
        $records = $this->provinceService->findAll();
        
        foreach ($records as $record){
            $data[$record->getId()] = $record->getName();
        }
        asort($data);
        $this->setEmptyOption($this->translator->translate('Please select a province ...'));
        $this->setValueOptions($data);
    }
    
    public function setServiceLocator(ServiceLocatorInterface $sl)
    {
        $this->serviceLocator = $sl;
    }
    
    public function getServiceLocator()
    {
        return $this->serviceLocator;
    }
}
