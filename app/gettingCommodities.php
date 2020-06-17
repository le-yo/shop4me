<?php 
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM posts WHERE qty > '0' AND qty != 'NULL' AND category = 'COMMODITIES' ORDER BY dateCreated DESC LIMIT 2;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($title, $price, $descr, $dateCreated, $imageUrl,$documentId,$category,$size,$brand,$prev_price,$user_id,$shop_id,$qty);
	
	$products['posts'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
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
	

?>
