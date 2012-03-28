<?php
class OauthController extends Zend_Controller_Action
{

    public function twitterAction()
    {
    
        $session = new Zend_Session_Namespace('OAUTH_TWITTER');
        
        
        $config = array(
		    'callbackUrl' => 'http://news123.local/oauth/twitter',
		    'siteUrl' => 'http://twitter.com/oauth',
		    'consumerKey' => 'WZxl7Thz0h94jf7de6lBcg',
		    'consumerSecret' => '6nxMSHnhHNLYtNifEo7ipqEQgvGDbzSghSBLccQ08'
		);
		
		$consumer = new Zend_Oauth_Consumer( $config );
		
		if( isset( $_GET['oauth_token'])) {
		    
		    $session->token= $consumer->getAccessToken(
				$_GET, 
				unserialize($session->request_token)
			);
			

			$twitter = new Zend_Service_Twitter(array(
			    'accessToken' => $session->token
			));
			
			$twitterAccount = $twitter->account->verifyCredentials();
			
			
			return $this->_redirect( '/' );
		}
		
		$token = $consumer->getRequestToken();
		
		$session->request_token = serialize($token);
		
		$consumer->redirect();
		exit;
		
    
    }

}