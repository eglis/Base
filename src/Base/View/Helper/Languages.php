<?php
namespace Base\View\Helper;

use Base\Service\LanguagesService;
use Zend\View\Helper\AbstractHelper;

class Languages extends AbstractHelper
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
     * Languages constructor.
     * @param LanguageService $service
     */
    public function __construct(LanguagesService $service, $translator)
    {
        $this->service = $service;
        $this->translator = $translator;
    }

    public function __invoke()
    {
        $selLanguage = null;

        // get the language codes
        $langList = $this->service->getLanguageOnSite();

        $locale = $this->translator->getTranslator()->getLocale();
        $selectedLanguage = $this->service->findByLocale($locale);
        if (!empty($selectedLanguage)) {
            $selLanguage = $selectedLanguage->getLanguage();
        }

        return $this->view->render('partial/languages', array('languages' => $langList, 'selectedLanguage' => $selLanguage));
    }
}