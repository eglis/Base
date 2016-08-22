<?php
namespace Base\View\Helper;

use Pd\Service\PdService;
use Zend\View\Helper\AbstractHelper;

class User extends AbstractHelper
{
    /**
     * @var PdService
     */
    protected $service;

    /**
     * User constructor.
     * @param PdService $service
     */
    public function __construct(PdService $service)
    {
        $this->service = $service;
    }

    public function __invoke($userId)
    {
        return $this->service->getPdByUserId($userId);
    }
}