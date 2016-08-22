<?php
namespace Base\View\Helper;

use Base\Service\LanguagesService;
use Zend\View\Helper\AbstractHelper;

class LanguageCodes extends AbstractHelper
{
    /**
     * @var LanguageService
     */
    protected $service;

    /**
     * @var MvcTranslator
     */
    protected $translator;

    /**
     * LanguageCodes constructor.
     * @param LanguageService $service
     * @param \Zend\Mvc\I18n\Translator $translator
     */
    public function __construct(LanguagesService $service, \Zend\Mvc\I18n\Translator $translator)
    {
        $this->service = $service;
        $this->translator = $translator;
    }

    public function __invoke()
    {

        // get the language codes
        $langList = $this->service->getCodes();
        return $langList;
    }
}