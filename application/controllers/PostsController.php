<?php

class PostsController extends Zend_Controller_Action {

    public function deleteAction() {

        if (!$this->_hasParam('id')) {
            return $this->_redirect('/posts/listar');
        }

        $posts = new Application_Model_Posts();
        $row = $posts->getRow($this->_getParam('id'));

        if ($row) {
            $row->delete();
        }
        return $this->_redirect('/posts/listar');
    }

    public function verAction() {

        if (!$this->_hasParam('id')) {
            return $this->_redirect('/');
        }

        $posts = new Application_Model_Posts();
        $post = $posts->getRow($this->_getParam('id'));

        if (!$post) {
            return $this->_redirect('/');
        }

        $this->view->post = $post;
    }

    public function updateAction() {

        if (!$this->_hasParam('id')) {
            return $this->_redirect('/posts/listar');
        }


        $form = new Application_Form_Post();
        $posts = new Application_Model_Posts();

        if ($this->getRequest()->isPost()) {

            if ($form->isValid($this->_getAllParams())) {
                $model = new Application_Model_Posts();
                $model->save($form->getValues(), $this->_getParam('id'));
                return $this->_redirect('/posts/listar/');
            }
        } else {

            $row = $posts->getRow($this->_getParam('id'));
            if ($row) {
                $form->populate($row->toArray());
            }
        }

        $this->view->form = $form;
    }

    public function listarAction() {

        $auth = Zend_Auth::getInstance();
        if (! $auth->hasIdentity()) {
            return $this->_redirect('/usuarios/login');
        }

        $model = new Application_Model_Posts();
        $posts = $model->getAll();

        Zend_View_Helper_PaginationControl::setDefaultViewPartial('paginator/items.phtml');
        $paginator = Zend_Paginator::factory($posts);

        if ($this->_hasParam('page')) {
            $paginator->setCurrentPageNumber($this->_getParam('page'));
        }

        $this->view->paginator = $paginator;
    }

    public function agregarAction() {

        $form = new Application_Form_Post();

        if ($this->getRequest()->isPost()) {

            if ($form->isValid($this->_getAllParams())) {
                $model = new Application_Model_Posts();
                $model->save($form->getValues());
                return $this->_redirect('/posts/listar/');
            }
        }


        $this->view->form = $form;
    }

}
