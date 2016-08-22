<?php
namespace Base\View\Helper;

use Zend\View\Helper\AbstractHelper;

class Datetime extends AbstractHelper
{

    /**
     * @var MvcTranslator
     */
    protected $translator;

    /**
     * Datetime constructor.
     * @param Translator $service
     */
    public function __construct(\Zend\Mvc\I18n\Translator $translator)
    {
        $this->translator = $translator;
    }

    public function __invoke($value, $format = 'Y-m-d H:i:s', $dateType = \IntlDateFormatter::SHORT, $timeType = \IntlDateFormatter::NONE)
    {
        $locale = $this->translator->getTranslator()->getLocale();

        $formatter = new \IntlDateFormatter($locale, $dateType, $timeType, null, null, $format);

        $date = new \DateTime($value);

        return $formatter->format($date);

    }
}