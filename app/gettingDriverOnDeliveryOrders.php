<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	$driver_id = $_POST['driver_id'];
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM orders WHERE driver_id = '$driver_id' AND deleted = 'no' AND shipped_status = 'on delivery' ORDER BY date DESC LIMIT 2;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($docRef,$user_id,$order_no,$date,$amount,$delivery_fee,$driver_id,$shipped_status,$delivery_details,$shop_id,$mpesa_code,$deleted);
	
	$products['orders'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['docRef'] = $docRef; 
		$temp['user_id'] = $user_id; 
		$temp['order_no'] = $order_no; 
		$temp['mpesa_code'] = $mpesa_code; 
		$temp['date'] = $date; 
		$temp['amount'] = $amount; 
		$temp['delivery_fee'] = $delivery_fee; 
		$temp['driver_id'] = $driver_id; 
		$temp['shipped_status'] = $shipped_status; 
		$temp['delivery_details'] = $delivery_details; 
		$temp['shop_id'] = $shop_id; 

		array_push($products['orders'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
?>
