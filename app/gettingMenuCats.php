<?php 

if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	
	$type = $_POST['type'];
	$shop_id = $_POST['shop_id'];
	
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM menu_cats WHERE type='$type' AND shop_id = '$shop_id' ORDER BY cat ASC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$cat,$type,$shop_id);
	
	$products['menus'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['cat'] = $cat; 
		$temp['id'] = $id;
		$temp['type'] = $type;
		  

		array_push($products['menus'], $temp);
	}
	
}
	
	//displaying the result in json format 
	echo json_encode($products);
	?>
