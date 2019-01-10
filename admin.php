<?php

use \Click\PageAdmin;
use \Click\Model\User;

$app->get('/admin', function() {
    

	User:: verifyLogin();

    $page = new PageAdmin();
	$page->setTpl("index");

});
$app->get('/admin/login', function() {

  $page = new PageAdmin([
    "header"=>false,
    "footer"=>false
  ]);

  $page->setTpl("login",[

    'error'=>User::getError(),
    'errorRegister'=>User::getErrorRegister(),
    'registerValues'=>(isset($_SESSION['registerValues'])) ? $_SESSION['registerValues']: ['name'=>'', 'email'=>'','phone'=>'']

  ]);

});

$app->post('/admin/login', function() {

try{
  User::login($_POST["login"], $_POST["password"]);
}catch(Exception $e){

    User::setError($e->getMessage());
  }
  header("Location: /admin");
  exit;

});

$app->get('/admin/logout', function() {
    
   User::logout();

   header("Location: /admin/login");
   exit;

});
?>
