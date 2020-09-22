<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strListingId = $_POST['strListingId'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM p_listingimages WHERE strListingId = '$strListingId' ORDER BY id DESC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strListingId,$strImageUrl);
	
	$products['listings'] = array(); 
	$response = array();
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();		
		$temp['id'] = $id;
		$temp['strImageUrl'] = $strImageUrl;
		$temp['strListingId'] = $strListingId;

        $temp["status"] = "0";
        $temp["message"] = "there..!";

		array_push($products['listings'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}
	?>
