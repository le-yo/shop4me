<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strBar = $_POST['strBar'];
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM cs_items WHERE strBar = '$strBar';");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strBar,$strTitle,$strPrice);
	
	$products['items'] = array(); 
	$response = array();
	
	//traversing through all the result 
	if($stmt->fetch()>0){

		$temp = array();		
		$temp['id'] = $id;
		$temp['strBar'] = $strBar;
		$temp['strTitle'] = $strTitle;
		$temp['strPrice'] = $strPrice;

		array_push($products['items'], $temp);
	
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