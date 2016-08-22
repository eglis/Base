<?php
namespace Base\View\Helper;

use Base\Service\SettingsService;
use Zend\View\Helper\AbstractHelper;

class Settings extends AbstractHelper
{
    /**
     * @var LanguageService
     */
    protected $service;

    /**
     * Languages constructor.
     * @param LanguageService $service
     */
    public function __construct(SettingsService $service)
    {
        $this->service = $service;
    }

    public function __invoke($parameter, $module = "base")
    {
        if (!empty($parameter)) {
            return $this->service->getValueByParameter($module, $parameter);
        }
        return false;
    }
}