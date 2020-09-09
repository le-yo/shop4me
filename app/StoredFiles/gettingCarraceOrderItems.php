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
	$stmt = $conn->prepare("SELECT * FROM c_order_items WHERE strOrderId = '$strOrderId' ORDER BY id DESC");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strDocId,$strOrderId,$strName,$strQty,$strPrice,$strImageUrl);
	
	$products['orders'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['strDocId'] = $strDocId; 
		$temp['strOrderId'] = $strOrderId; 
		$temp['strName'] = $strName; 
		$temp['strQty'] = $strQty; 
		$temp['strPrice'] = $strPrice; 
		$temp['strImageUrl'] = $strImageUrl; 


		array_push($products['orders'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
?>
