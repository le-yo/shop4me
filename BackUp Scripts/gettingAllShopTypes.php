<?php 
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM shop_types ORDER BY dateCreated ASC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id, $image, $category,$dateCreated);
	
	$products = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['image'] = $image; 
		$temp['category'] = $category;
		$temp['dateCreated'] = $dateCreated;

		array_push($products, $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	?>
