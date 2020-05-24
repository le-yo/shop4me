<?php 
	
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM drivers WHERE approved = 'approved' ORDER BY full_name DESC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($driver_id,$full_name,$id,$phone,$vehicle_type,$plate,$date_joined,$location,$approved);
	
	$products['drivers'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

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

		array_push($products['drivers'], $temp);
	
	}
    echo json_encode($products);
	

	?>
