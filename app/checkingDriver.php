<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$driver_id = $_POST['driver_id'];
	
	//$conn = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM drivers WHERE driver_id = '$driver_id' AND approved = 'approved';");
	
	//executing the query 
	$stmt->execute();
								

	//binding results to the query 
	$stmt->bind_result($driver_id,$full_name,$id,$phone,$vehicle_type,$plate,$date_joined,$location,$approved);
	
	$products['drivers'] = array(); 
	$temp = array();
		
	
	//traversing through all the result 
	if($stmt->fetch()>0){
		
		$temp['driver_id'] = $driver_id;
		$temp['full_name'] = $full_name;
		$temp['id'] = $id;
		$temp['phone'] = $phone;
		$temp['vehicle_type'] = $vehicle_type;
		$temp['plate'] = $plate;
		$temp['date_joined'] = $date_joined;
		$temp['location'] = $location;
		$temp['approved'] = $approved;
		$temp["status"] = "0";
       		$temp["message"] = "there..!";       

		array_push($products['drivers'], $temp);
    		echo json_encode($products);
	
	}else {
		$temp["status"] = "1";
       		$temp["message"] = "not there..!";   
		
		array_push($products['drivers'], $temp);
      		echo json_encode($products);
	}
  
  
}
	

	?>
