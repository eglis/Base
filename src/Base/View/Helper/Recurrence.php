<?php
namespace Base\View\Helper;

use Zend\View\Helper\AbstractHelper;

class Recurrence extends AbstractHelper
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

    public function __invoke($start, $end, $recurrence)
    {

        if (!empty($recurrence)) {
            $startDate = new \DateTime($start);
            $endDate = new \DateTime($end); // Optional

            $locale = $this->translator->getTranslator()->getLocale();
            $fallbackLocale = $this->translator->getTranslator()->getFallbackLocale();
            setlocale(LC_TIME, $locale);

            $recurrence = str_replace("RRULE:", "", $recurrence);
            $rule = new \Recurr\Rule($recurrence, $startDate, $endDate, 'Europe/London');
            $transformer = new \Recurr\Transformer\ArrayTransformer();

            $trans = new \Recurr\Transformer\Translator();
            try {
                $trans->loadLocale(substr($locale, 0, 2));
            } catch (\Exception $e) {
                $trans->loadLocale(substr($fallbackLocale, 0, 2));
            }

            $textTransformer = new \Recurr\Transformer\TextTransformer($trans);
            return $textTransformer->transform($rule);
        }

        return false;
    }
}