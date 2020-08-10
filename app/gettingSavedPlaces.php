<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strUserId = $_POST['strUserId'];	
	
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM rivo_places WHERE strUserId = '$strUserId'  LIMIT 2");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strUserId,$strName,$strAdress,$strLatLng);
	
	$places['places'] = array(); 
	
	//traversing through all the result 
	if($stmt->fetch()){

		$temp = array();
		
		$temp['strUserId'] = $strUserId;
		$temp['strName'] = $strName;
		$temp['strAdress'] = $strAdress;
		$temp['strLatLng'] = $strLatLng;

		array_push($places['places'], $temp);
	
	}
	echo json_encode($places);
	
}
?>
