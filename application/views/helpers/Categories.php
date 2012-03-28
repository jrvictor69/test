<?php
class Application_View_Helper_Categories extends Zend_View_Helper_Abstract
{
    
    public function categories()
    {
        
        $categoriesModel = new Application_Model_Categories();
        
        return $categoriesModel->fetchAll();
    }
}