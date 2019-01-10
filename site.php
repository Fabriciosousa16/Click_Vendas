<?php

use \Click\Page;
use \Click\Model\Product;
use \Click\Model\User;

$app->get('/', function() {
    
	$products = Product::listAll();

    $page = new Page();
	$page->setTpl("index",[

		'products'=>Product::checklist($products)
	]);

});

?>
