<?php 
	
	
	require_once('dbConnect.php');
	
	//$conn = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM ads;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($docRef,$imageUrl);
	
	$products['ads'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['docRef'] = $docRef; 
		$temp['imageUrl'] = $imageUrl; 

		array_push($products['ads'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
?>
