<?php

use \Click\Page;
use \Click\Model\Product;
use \Click\Model\User;
use \Click\Model\Category;
use \Click\Model\Cart;

$app->get('/', function() {
    
	$products = Product::listAll();

    $page = new Page();
	$page->setTpl("index",[

		'products'=>Product::checklist($products)
	]);

});

$app->get("/categories/:idcategory", function($idcategory){

	$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;

	$category = new Category();

	$category->get((int)$idcategory);

	$pagination = $category->getProductsPage($page);

	$pages = [];

	for ($i=1; $i<=$pagination['pages'];$i++){
		array_push($pages, [

		'link'=>'/categories/'.$category->getidcategory().'?pages='.$i,
		'page'=>$i

		]);
	}

	$page = new Page(); 

	$page->setTpl("category", [
	'category'=>$category->getValues(),
	'products'=>$pagination["data"],
	'pages'=>$pages
]);

});

$app->get("/products/:desurl", function($desurl){

	$product = new Product();

	$product->getFromUrl($desurl);

	$page = new Page();

	$page->setTpl("product-detail", [
		'product'=>$product->getValues(),
		'categories'=>$product->getCategories()
	]);


});

$app->get("/cart", function(){

	$cart = Cart::getFromSession();

	$page = new Page();

	$page->setTpl("cart",[
		'cart'=>$cart->getValues(),
		'products'=>$cart->getProducts(),
		'error'=>Cart::getMsgError()

	]);

});

$app->get("/cart/:idproduct/add", function($idproduct){


	$product = new Product();

	$product->get((int)$idproduct);

	$cart = Cart::getFromSession();

	$qtd = (isset($_GET['qtd'])) ? (int)$_GET['qtd'] : 1;

	for ($i=0;$i<$qtd;$i++){

			$cart->addProduct($product);

	}


	header("Location: /cart");
	exit;

});

$app->get("/cart/:idproduct/minus", function($idproduct){

	$product = new Product();

	$product->get((int)$idproduct);

	$cart = Cart::getFromSession();

	$cart->removeProduct($product);

	header("Location: /cart");
	exit;

});

$app->get("/cart/:idproduct/remove", function($idproduct){

	$product = new Product();

	$product->get((int)$idproduct);

	$cart = Cart::getFromSession();

	$cart->removeProduct($product, true);

	header("Location: /cart");
	exit;

});

$app->post("/cart/freight", function(){

	$cart = Cart::getFromSession();

	$cart->setFreight($_POST['zipcode']);

	header("Location: /cart");
	exit;

});


$app->get("/checkout", function(){

	User::verifyLogin(false);

	$cart = Cart::getFromSession();

	$page = new Page();

	$page->setTpl("checkout", [
		'cart'=>$cart->getValues(),
		'products'=>$cart->getProducts(),
		'error'=>Address::getMsgError()
	]);

});


$app->get("/login", function(){	

	$page = new Page();

	$page->setTpl("login",[

		'error'=>User::getError(),
		'errorRegister'=>User::getErrorRegister(),
		'registerValues'=>(isset($_SESSION['registerValues'])) ? $_SESSION['registerValues']: ['name'=>'', 'email'=>'','phone'=>'']

	]);

});

$app->post("/login", function(){

	try{

	User::Login($_POST['login'], $_POST['password']);

	}catch(Exception $e){

		User::setError($e->getMessage());
	}
	header("Location: /checkout");
	exit;

});

$app->get("/logout", function(){
    User::logout();
    Cart::removeFromSession();
    session_regenerate_id();
    header("Location: /login");
    exit;
});

$app->get("/profile", function(){

	User::verifyLogin(false);

	$user = User::getFromSession();

	$page = new Page();

	$page->setTpl("profile", [
		'user'=>$user->getValues(),
		'profileMsg'=>User::getSuccess(),
		'profileError'=>User::getError()
	]);

});

?>
