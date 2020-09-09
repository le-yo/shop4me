<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strShippedStatus = $_POST['strShippedStatus'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM c_orders WHERE strShippedStatus = '$strShippedStatus' AND strDeleted != 'true' ORDER BY id DESC");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strDocumentId,$strUserId,$strOrderNumber,$strDate,$strAmount,$strDeliveryFee,$strDeleted,$strShippedStatus,$strMpesaCode,$strLatLng,$strPaymentMethod);
	
	$products['orders'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['strDocumentId'] = $strDocumentId; 
		$temp['strUserId'] = $strUserId; 
		$temp['strOrderNumber'] = $strOrderNumber; 
		$temp['strDate'] = $strDate; 
		$temp['strAmount'] = $strAmount; 
		$temp['strDeliveryFee'] = $strDeliveryFee; 
		$temp['strDeleted'] = $strDeleted; 
		$temp['strShippedStatus'] = $strShippedStatus; 
		$temp['strMpesaCode'] = $strMpesaCode; 
		$temp['strLatLng'] = $strLatLng; 
		$temp['strPaymentMethod'] = $strPaymentMethod; 


		array_push($products['orders'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
?>
