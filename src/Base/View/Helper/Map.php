<?php
namespace Base\View\Helper;

use Base\Service\SettingsService;
use Zend\View\Helper\AbstractHelper;

class Map extends AbstractHelper
{

    /**
     * @var LanguageService
     */
    protected $service;

    /**
     * Languages constructor.
     * @param SettingsService $service
     */
    public function __construct(SettingsService $service)
    {
        $this->service = $service;
    }

    public function __invoke($address, $zoom = 6)
    {
        $coords = array();
        $googleapikey = $this->service->getValueByParameter('General', 'googleapikey');

        if (!empty($address) && is_string($address)) {

        } elseif (!empty($address) && is_array($address)) {
            if (!empty($address['latitude']) && !empty($address['longitude'])) {
                $coords[] = array('lat' => $address['latitude'], 'lng' => $address['longitude']);
            }
        }

        return $this->view->render('partial/map', array('coords' => $coords, 'key' => $googleapikey, 'zoom' => $zoom));
    }
}