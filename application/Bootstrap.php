<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
	
	protected function _initTranslate()
	{
		$session = new Zend_Session_Namespace( 'news123');
		
		$translate = new Zend_Translate(
			array(
				'adapter' => 'ini', 
				'content' => APPLICATION_PATH . '/configs/lang',
				'scan' => Zend_Translate::LOCALE_DIRECTORY
			)
		);
		
		if( !$session->locale ){
			$session->locale = 'es';
		}
		
		if( isset( $_GET['lang'])){
			$session->locale = $_GET['lang'];
		}
		
		$translate->addTranslation(array(
				'content' => APPLICATION_PATH .'/configs/lang/'.$session->locale .'.ini',
				'locale' => $session->locale
			)
		);
		
		$this->bootstrap('view');
		
		$view = $this->getResource('view');
		$view->translate = $translate;
		
	}

}