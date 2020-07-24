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
	$stmt = $conn->prepare("SELECT * FROM order_items  WHERE strOrderId = '$strOrderId' ORDER BY id ASC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strName,$strQty,$strSize,$strImageUrl,$strPrice,$strOrderId);
	
	$products['order_items']= array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['strName'] = $strNameid;
		$temp['strQty'] = $strQty;
		$temp['strSize'] = $strSize;  
		$temp['strImageUrl'] = $strImageUrl;  
		$temp['strPrice'] = $strPrice;  
		$temp['strOrderId'] = $strOrderId;  

		array_push($products['order_items'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
}
	

	?>
