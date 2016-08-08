<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Base\Controller;

use Base\Service\LanguagesService;
use Base\Form\LanguagesForm;
use Base\Form\LanguagesFilter;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use ZfcDatagrid\Column;
use ZfcDatagrid\Column\Type;
use ZfcDatagrid\Column\Style;
use ZfcDatagrid\Column\Formatter;
use ZfcDatagrid\Filter;
use Zend\Db\Sql\Select;
use Zend\Db\Adapter\Adapter;
use ZfcDatagrid\Datagrid;

class LanguagesAdminController extends AbstractActionController
{
	protected $languagesService;
    protected $form;
    protected $formfilter;
    protected $translator;
    protected $adapter;
    protected $datagrid;

	public function __construct(LanguagesService $recordService, LanguagesForm $form, LanguagesFilter $formfilter, Adapter $adapter, Datagrid $datagrid, $translator)
    {
        $this->recordService = $recordService;
        $this->form = $form;
        $this->formfilter = $formfilter;
        $this->translator = $translator;
        $this->adapter = $adapter;
        $this->datagrid = $datagrid;
    }
    /**
     * Add new information
     */
    public function addAction ()
    {

    	$viewModel = new ViewModel(array (
    			'form' => $this->form,
    	));

    	$viewModel->setTemplate('base/languages-admin/edit');
    	return $viewModel;
    }

    /**
     * Edit the main information
     */
    public function editAction ()
    {
    	$id = $this->params()->fromRoute('id');

    	// Get the record by its id
    	$rsdata = $this->recordService->find($id);

    	// Bind the data in the form
    	if (! empty($rsdata)) {
    		$this->form->bind($rsdata);
    	}

    	$viewModel = new ViewModel(array (
    			'form' => $this->form,
    	));

    	return $viewModel;
    }

    /**
     * List of all records
     */
    public function indexAction ()
    {
    	$grid = $this->createGrid();
    	$grid->render();

    	$response = $grid->getResponse();

    	if ($grid->isHtmlInitReponse()) {
    		$view = new ViewModel();
    		$view->addChild($response, 'grid');
    		return $view;
    	} else {
    		return $response;
    	}

    }

    // Create the list grid
    private function createGrid ()
    {
    	$dbAdapter = $this->adapter;
    	$select = new Select();
    	$select->from(array ('l' => 'base_languages'));

    	$grid = $this->datagrid;
    	$grid->setDefaultItemsPerPage(100);
    	$grid->setDataSource($select, $dbAdapter);

    	$colId = new Column\Select('id', 'l');
    	$colId->setLabel('Id');
    	$colId->setIdentity();
    	$grid->addColumn($colId);

    	$col = new Column\Select('language', 'l');
    	$col->setLabel(_('Title'));
    	$col->setWidth(15);
    	$grid->addColumn($col);

    	$col = new Column\Select('locale', 'l');
    	$col->setLabel(_('Locale'));
    	$grid->addColumn($col);

    	$col = new Column\Select('base', 'l');
    	$col->setType(new \ZfcDatagrid\Column\Type\PhpString());
    	$col->setLabel(_('Default language'));
    	$col->setTranslationEnabled(true);
    	$col->setFilterSelectOptions(array (
    			'' => '-',
				'0' => _('No'),
				'1' => _('Yes'),
    	));
    	$col->setReplaceValues(array (
    			'' => '-',
				'0' => _('No'),
				'1' => _('Yes'),
    	));
    	$grid->addColumn($col);

    	$col = new Column\Select('active', 'l');
    	$col->setType(new \ZfcDatagrid\Column\Type\PhpString());
    	$col->setLabel(_('Active'));
    	$col->setTranslationEnabled(true);
    	$col->setFilterSelectOptions(array (
    			'' => '-',
				'0' => _('No'),
				'1' => _('Yes'),
    	));
    	$col->setReplaceValues(array (
    			'' => '-',
				'0' => _('No'),
				'1' => _('Yes'),
    	));
    	$grid->addColumn($col);

    	// Add actions to the grid
    	$showaction = new Column\Action\Button();
    	$showaction->setAttribute('href', "/admin/languages/edit/" . $showaction->getColumnValuePlaceholder(new Column\Select('id', 'l')));
    	$showaction->setAttribute('class', 'btn btn-xs btn-success');
		$showaction->setLabel($this->translator->translate('Edit'));

    	$delaction = new Column\Action\Button();
    	$delaction->setAttribute('href', '/admin/languages/delete/' . $delaction->getRowIdPlaceholder());
		$delaction->setAttribute('onclick', "return confirm('" . _('Are you sure?') . "')");
    	$delaction->setAttribute('class', 'btn btn-xs btn-danger');
		$delaction->setLabel($this->translator->translate('Delete'));

    	$col = new Column\Action();
    	$col->addAction($showaction);
    	$col->addAction($delaction);
    	$grid->addColumn($col);

    	$grid->setToolbarTemplate('');

    	return $grid;
    }

    /**
     * Prepare the data and then save them
     *
     * @return \Zend\View\Model\ViewModel
     */
    public function processAction ()
    {

    	if (! $this->request->isPost()) {
    		return $this->redirect()->toRoute(NULL, array (
    				'controller' => 'languages',
    				'action' => 'index'
    		));
    	}

    	$post = $this->request->getPost();
    	$this->form->setData($post);

    	$this->form->setInputFilter($this->formfilter);

    	if (!$this->form->isValid()) {

    		// Get the record by its id
    		$viewModel = new ViewModel(array (
    				'error' => true,
    				'form' => $this->form,
    		));
    		$viewModel->setTemplate('base/languages-admin/edit');
    		return $viewModel;
    	}

    	// Get the posted vars
    	$data = $this->form->getData();

    	// Save the data in the database
    	$record = $this->recordService->save($data);

    	$this->flashMessenger()->setNamespace('success')->addMessage($this->translator->translate('The information have been saved.'));

    	return $this->redirect()->toRoute(NULL, array (
    			'controller' => 'languages',
				'action' => 'Edit',
    			'id' => $record->getId()
    	));
    }

    /**
     * Delete the records
     *
     * @return \Zend\Http\Response
     */
    public function deleteAction ()
    {
    	$id = $this->params()->fromRoute('id');

    	if (is_numeric($id)) {

    		// Delete the record informaiton
    		$this->recordService->delete($id);
    
    		// Go back showing a message
    		$this->flashMessenger()->setNamespace('success')->addMessage($this->translator->translate('The record has been deleted!'));
    		return $this->redirect()->toRoute('zfcadmin/languages');
    	}
    
    	$this->flashMessenger()->setNamespace('danger')->addMessage($this->translator->translate('The record has been not deleted!'));
    	return $this->redirect()->toRoute('zfcadmin/languages');
    }
}
