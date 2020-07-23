<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	$driver_id = $_POST['driver_id'];	
	$shipped_status = $_POST['shipped_status'];
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM orders WHERE driver_id = '$driver_id' AND deleted = 'no' AND shipped_status = '$shipped_status' ORDER BY id DESC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id, $docRef,$user_id,$order_no,$date,$amount,$delivery_fee,$driver_id,$shipped_status,$delivery_details,$shop_id,$mpesa_code,$deleted,$vehicle_type,$latlng);
	
	$products['orders'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['latlng'] = $latlng; 
		$temp['id'] = $id; 
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
		$temp['vehicle_type'] = $vehicle_type; 

		array_push($products['orders'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
?>
