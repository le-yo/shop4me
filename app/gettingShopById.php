<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$id= $_POST['id'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM shops WHERE id = '$id';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$name,$image,$dateCreated,$location,$category,$email,$phone,$city,$user_id,$till,$status,$open,$account_no);
	
	$products['shops'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['id'] = $id; 
		$temp['image'] = $image; 
		$temp['name'] = $name; 
		$temp['dateCreated'] = $dateCreated; 
		$temp['location'] = $location; 
		$temp['email'] = $email;  
		$temp['phone'] = $phone;
		$temp['city'] = $city;
		$temp['user_id'] = $user_id;
		$temp['category'] = $category;
		$temp['status'] = $status;
		$temp['till'] = $till;
		$temp['account_no'] = $account_no;
		$temp['open'] = $open;

		array_push($products['shops'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
	?>
