<?php
class Application_Model_Posts extends Zend_Db_Table_Abstract
{
	protected $_name = 'posts';
	protected $_primary = 'id';
	
	public function getAll()
	{
		return $this->fetchAll();
	}
	
	public function getAllNew()
	{
		return $this->fetchAll(
			$this->select()
			->order('created_at DESC')
			->limit(5)
		);
	}	
	
	public function save( $bind, $id = null )
	{
	    if( is_null( $id )){
	        $row = $this->createRow();
	    }else{
	        $row = $this->getRow( $id );
	    }
	
		$row->setFromArray( $bind );
		return $row->save();
	}
	
	public function getRow( $id )
	{
	
	    $id = (int) $id;
	    $row = $this->find( $id )->current();
	    return $row;
	}
}
