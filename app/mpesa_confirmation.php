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
	$response = array();
	
	//traversing through all the result 
	if($stmt->fetch()>0){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['strOrderId'] = $strOrderId; 
		$temp['strPhone'] = $strPhone; 
		$temp['strAmount'] = $strAmount; 
		$temp['status'] = "0"; 
                $temp["message"] = "there..!";

		array_push($products['mpesa'], $temp);
	
	//displaying the result in json format 
	echo json_encode($products); 
		
	}else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Not there..!";
    // echoing JSON response
        echo json_encode($response);
    }
	
}
?>
