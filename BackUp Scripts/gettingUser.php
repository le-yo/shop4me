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
	$stmt = $conn->prepare("SELECT * FROM users WHERE strUserId = '$strUserId';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($strUserId,$strUsername,$strEmail,$strPhone,$strCounty,$strLocation,$strCity,$strImageUrl);
	
	$products['users'] = array(); 
	$response = array();
	
	//traversing through all the result 
	if($stmt->fetch()>0){

		$temp = array();
		
		$temp['strUserId'] = $strUserId;
		$temp['strUsername'] = $strUsername;
		$temp['strEmail'] = $strEmail;
		$temp['strPhone'] = $strPhone;
		$temp['strCounty'] = $strCounty;
		$temp['strLocation'] = $strLocation;
		$temp['strCity'] = $strCity;
		$temp['strImageUrl'] = $strImageUrl;
        $temp["status"] = "0";
        $temp["message"] = "there..!";

		array_push($products['users'], $temp);
	
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
