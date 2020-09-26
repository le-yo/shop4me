<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strDocumentId']) && isset($_REQUEST['strOrderNumber']) 
    && isset($_REQUEST['strAmount']) && isset($_REQUEST['strDate'])){
        
        	//Getting post data 
		$strDocumentId = $_REQUEST['strDocumentId'];
		$strOrderNumber = $_REQUEST['strOrderNumber'];
		$strAmount = $_REQUEST['strAmount'];
		$strDate = $_REQUEST['strDate'];

        $adding = "INSERT INTO cs_sales (strDocumentId,strOrderNumber,strAmount,strDate) VALUES ('$strDocumentId','$strOrderNumber','$strAmount','$strDate')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly sents.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>