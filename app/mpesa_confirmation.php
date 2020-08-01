<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strOrderId = $_POST['strOrderId'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	id	strOrderId	strPhone	strAmount

	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM mpesa_account WHERE strOrderId = '$strOrderId';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strOrderId,$strPhone,$strAmount);
	
	$products['mpesa'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['strOrderId'] = $strOrderId; 
		$temp['strPhone'] = $strPhone; 
		$temp['strAmount'] = $v; 

		array_push($products['mpesa'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
?>
