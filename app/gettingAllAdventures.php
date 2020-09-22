<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnectRe.php');
	
	$strType = $_POST['strType'];
	
	
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM p_adventures WHERE strType = '$strType' ORDER BY id DESC;");
	
	//executing the query a
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strUserId,$strDocumentId,$strTitle,$strDescription,$strListingId,$strType,$strCounty);
	
	$products['listings'] = array(); 
	$response = array();
	
	//traversing through all the result 
	while($stmt->fetch()){

		$temp = array();		
		$temp['id'] = $id;
		$temp['strUserId'] = $strUserId;
		$temp['strTitle'] = $strTitle;
		$temp['strDescription'] = $strDescription;
		$temp['strDocumentId'] = $strDocumentId;
		$temp['strListingId'] = $strListingId;
		$temp['strType'] = $strType;
		$temp['strCounty'] = $strCounty;

		array_push($products['listings'], $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
}

	?>
