<?php
class CategoriasController extends Zend_Controller_Action
{
    
    
    public function indexAction()
    {
        
        $categoryModel = new Application_Model_Categories();
        
        
        Zend_View_Helper_PaginationControl::setDefaultViewPartial('paginator/items.phtml');
        $paginator = Zend_Paginator::factory($categoryModel->getAllNews());

        if ($this->_hasParam('page')) {
            $paginator->setCurrentPageNumber($this->_getParam('page'));
        }

        $this->view->paginator = $paginator;
        
    }
    
    public function verAction()
    {
        
        if( !$this->_hasParam('id')){
            return $this->_redirect('/categorias/');
        }
        
        $categoryModel = new Application_Model_Categories();
        
        $news = $categoryModel->getAllNewsById($this->_getParam('id'));
        
        Zend_View_Helper_PaginationControl::setDefaultViewPartial('paginator/items.phtml');
        $paginator = Zend_Paginator::factory($news);

        if ($this->_hasParam('page')) {
            $paginator->setCurrentPageNumber($this->_getParam('page'));
        }

        $this->view->paginator = $paginator;

    }
    
    public function ver2Action() {
    	$new =_("this is a new commentario");
    }
}
