<?php

use \Click\PageAdmin;
use \Click\Model\User;

$app->get('/admin', function() {
    

	User:: verifyLogin();

    $page = new PageAdmin();
	$page->setTpl("index");

});

?>
