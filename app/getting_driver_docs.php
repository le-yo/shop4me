<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$driver_id= $_POST['driver_id'];
	
	require_once('dbConnect.php');
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM driver_doc WHERE driver_id = '$driver_id';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($driver_id,$id,$photo,$dl,$badge_dl,$insurance);
	
	$products['docs'] = array(); 
	$temp = array();
		
	
	//traversing through all the result 
	if($stmt->fetch()>0){
		
		$temp['driver_id'] = $driver_id;
		$temp['id'] = $id;
		$temp['photo'] = $photo;
		$temp['dl'] = $dl;
		$temp['badge_dl'] = $badge_dl;
		$temp['insurance'] = $insurance;
		$temp["status"] = "0";
       		$temp["message"] = "there..!";       

		array_push($products['docs'], $temp);
    		echo json_encode($products);
	
	}else {
		$temp["status"] = "1";
       		$temp["message"] = "not there..!";   
		
		array_push($products['docs'], $temp);
      		echo json_encode($products);
	}
	
}
	?>
