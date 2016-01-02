<?php

namespace Base\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Zend\Session\Container;
use Base\Service\LanguagesService;

class LanguageSwitcherController extends AbstractActionController
{

    protected $languagesService;

    public function __construct(LanguagesService $languagesService)
    {
        $this->languagesService = $languagesService;
    }

    /**
     * This action handles the selection of the language
     *
     * @return \Zend\Http\Response
     */
    public function changelngAction()
    {
        $session = new Container('base');
        $lang = $this->params()->fromRoute('lang');

        if (!empty($lang)) {
            if ($this->languagesService->findByCode($lang)) {
                $locale = $this->languagesService->findByCode($lang)->getLocale();
                $session->offsetSet('locale', $locale);
                $domain = str_replace("www", "", $_SERVER['HTTP_HOST']);

                $cookie = new  \Zend\Http\Header\SetCookie('locale', $locale, time() + 365 * 60 * 60 * 24, '/', $domain);
                $this->getResponse()->getHeaders()->addHeader($cookie);
            }
        }

        if ($this->getRequest()->getHeader('Referer')) {
            $url = $this->getRequest()->getHeader('Referer')->getUri();
            return $this->redirect()->toUrl($url);
        } else {
            return $this->redirect()->toRoute('home');
        }
    }
}