<?php
namespace Base\Form\Element;

use Base\Service\RegionService;
use Zend\Form\Element\Select;
use Zend\ServiceManager\ServiceLocatorAwareInterface;
use Zend\ServiceManager\ServiceLocatorInterface;
use Zend\I18n\Translator\Translator;

class Region extends Select implements ServiceLocatorAwareInterface
{
    protected $serviceLocator;
    protected $translator;
    protected $regionService;
    
    public function __construct(RegionService $regionService, \Zend\Mvc\I18n\Translator $translator){
        parent::__construct();
        $this->regionService = $regionService;
        $this->translator = $translator;
    }
    
    public function init()
    {
        $data = array();
        
        $records = $this->regionService->findAll();
        
        foreach ($records as $record){
            $data[$record->getId()] = $record->getName();
        }
        asort($data);
        $this->setEmptyOption($this->translator->translate('Please select a region ...'));
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
