<?php

class Application_Form_Post extends Zend_Form {

    public function init() {

        $this->addElement(
                'text', 'title', array(
            'label' => 'Titulo',
            'required' => true
                )
        );

        $this->addElement(
                'textarea', 'full_text', array(
            'label' => 'Contenido'
                )
        );

        
        $this->addElement( 'select', 'category_id',array(
            'label' => 'Categoria'
            
        )
                
        );
        
        $categoryModel = new Application_Model_Categories();
        
        $this->category_id->addMultiOptions( 
                $categoryModel->getAsKeyValue()
        );
        
        $this->addElement(
                'submit', 'Guardar', array()
        );
    }

}