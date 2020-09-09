<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	
	require_once('dbConnect.php');
	
	$strUserId = $_POST['strUserId'];	
	
	//creating a query
	$stmt = $conn->prepare("SELECT * FROM c_fevs WHERE strUserId = '$strUserId' ORDER BY RAND() DESC LIMIT 10");
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($id,$strUserId,$strCat);
	
	$products['fevs'] = array(); 
	$response = array();
	
	//traversing through all the result 
	if($stmt->fetch()>0){

		$temp = array();
		
		$temp['strUserId'] = $strUserId;
		$temp['strCat'] = $strCat;
                $temp["status"] = "0";
                $temp["message"] = "there..!";

		array_push($products['fevs'], $temp);

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
