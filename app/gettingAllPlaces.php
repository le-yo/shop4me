<?php 
	
	require_once('dbConnectRe.php');
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM p_listings ORDER BY id DESC;");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strUserId,$strTitle,$strDescription,$strLocation,$strAddress,$strNarrow,$strType,$strCounty,$strDocumentId,$strLatLng,$strPrice);
	
	$products['listings'] = array(); 
	$response = array();
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();		
		$temp['id'] = $id;
		$temp['strUserId'] = $strUserId;
		$temp['strTitle'] = $strTitle;
		$temp['strDescription'] = $strDescription;
		$temp['strLocation'] = $strLocation;
		$temp['strAddress'] = $strAddress;
		$temp['strNarrow'] = $strNarrow;
		$temp['strType'] = $strType;
		$temp['strCounty'] = $strCounty;
		$temp['strDocumentId'] = $strDocumentId;
		$temp['strPrice'] = $strPrice;
		$temp['strLatLng'] = $strLatLng;

		array_push($products['listings'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);

	?>
