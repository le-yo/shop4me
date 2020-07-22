<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$shop_id= $_POST['shop_id'];
	$food_cat= $_POST['food_cat'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM menu_items WHERE shop_id = '$shop_id' And food_cat = '$food_cat'");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($no, $id,$image,$menuitem,$shop_id,$price,$food_cat,$dateCreated,$type);
	
	$products['menus'] = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();
		
		$temp['no'] = $no;
		$temp['id'] = $id;
		$temp['image'] = $image; 
		$temp['food_cat'] = $food_cat; 
		$temp['dateCreated'] = $dateCreated; 
		$temp['shop_id'] = $shop_id; 
		$temp['menuitem'] = $menuitem;  
		$temp['price'] = $price;
		$temp['type'] = $type;

		array_push($products['menus'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
	?>
