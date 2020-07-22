<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$shop_id = $_POST['shop_id'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM posts WHERE shop_id = '$shop_id' AND qty > '0' AND qty != 'NULL' ORDER BY id DESC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id, $title, $price, $descr, $dateCreated, $imageUrl,$documentId,$category,$size,$brand,$prev_price,$user_id,$shop_id,$qty);
	
	$products['posts'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['title'] = $title; 
		$temp['price'] = $price; 
		$temp['descr'] = $descr; 
		$temp['dateCreated'] = $dateCreated; 
		$temp['imageUrl'] = $imageUrl; 
		$temp['documentId'] = $documentId; 
		$temp['category'] = $category;   
		$temp['size'] = $size;  
		$temp['brand'] = $brand;
		$temp['user_id'] = $user_id;
		$temp['shop_id'] = $shop_id;
		$temp['prev_price'] = $prev_price;
		$temp['qty'] = $qty;

		array_push($products['posts'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
	?>
