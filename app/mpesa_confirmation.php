<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strOrderId = $_POST['strOrderId'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM mpesa_account WHERE strOrderId = '$strOrderId';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strOrderId,$strPhone,$strAmount);
	
	$products['mpesa'] = array(); 
	$temp = array();
	
	//traversing through all the result 
	if($stmt->fetch()>0){

		
		
		$temp['id'] = $id; 
		$temp['strOrderId'] = $strOrderId; 
		$temp['strPhone'] = $strPhone; 
		$temp['strAmount'] = $strAmount; 
		$temp['status'] = "0"; 
                $temp["message"] = "there..!";

		array_push($products['mpesa'], $temp);
	
	//displaying the result in json format 
		
	}else {
		$temp['status'] = "1"; 
                $temp["message"] = "not there..!";

		array_push($products['mpesa'], $temp);
    }
	echo json_encode($products); 
	
}
?>
