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
	$stmt = $conn->prepare("SELECT * FROM drivers WHERE driver_id = '$driver_id';");
	
	//executing the query 
	$stmt->execute();
								

	//binding results to the query 
	$stmt->bind_result($driver_id,$full_name,$id,$phone,$vehicle_type,$plate,$date_joined,$location,$approved);
	
	$products['drivers'] = array(); 
	$response = array();
	
	//traversing through all the result 
	if($stmt->fetch()>0){

		$temp = array();
		
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
        $temp["message"] = "Found..!";

		array_push($products['drivers'], $temp);
	
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
