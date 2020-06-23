<?php 
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM product_cats  ORDER BY category ASC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$image,$category,$dateCreated,$shop_id);
	
	$products['carts']= array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['category'] = $category; 
		$temp['id'] = $id;
		$temp['image'] = $image;
		$temp['dateCreated'] = $dateCreated;  
		$temp['shop_id'] = $shop_id;  

		array_push($products['carts'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	

	?>
