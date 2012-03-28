<?php
class IndexController extends Zend_Controller_Action
{
    public function indexAction ()
    {
        
        /*
        $session = new Zend_Session_Namespace('OAUTH_TWITTER');
         		
        $config = array(
            'callbackUrl' => 'http://news123.local/oauth/twitter/thanks',
            'siteUrl' => 'http://twitter.com/oauth',
            'consumerKey' => 'WZxl7Thz0h94jf7de6lBcg',
            'consumerSecret' => '6nxMSHnhHNLYtNifEo7ipqEQgvGDbzSghSBLccQ08'
        );
        
        $consumer = new Zend_Oauth_Consumer( $config );
               
        
        $twitter = new Zend_Service_Twitter(
            array('accessToken' => $session->token )
        );
        
        $twitterAccount = $twitter->account->verifyCredentials();
        
        print_r($twitterAccount);exit;
        */        
        
        $this->view->titulo = 'Portal de noticias news123 - Portada';
        $postsModel = new Application_Model_Posts();
        $this->view->titulares = $postsModel->getAllNew();
    }
}