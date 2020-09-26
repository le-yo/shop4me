<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strDocumentId']) && isset($_REQUEST['strAmount']) && isset($_REQUEST['strDateTime'])){
        
        	//Getting post data 
		$strDateTime = $_REQUEST['strDateTime'];
		$strAmount = $_REQUEST['strAmount'];
		$strDocumentId = $_REQUEST['strDocumentId'];

        $adding = "INSERT INTO cs_grands (strDocumentId,strAmount,strDateTime) VALUES ('$strDocumentId','$strAmount','$strDateTime')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly sents.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($conn);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>