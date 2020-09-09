<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strShippedStatus']) && isset($_REQUEST['strDocumentId'])){
        
        	//Getting post data 
		$strShippedStatus = $_REQUEST['strShippedStatus'];
		$strDocumentId = $_REQUEST['strDocumentId'];

        $adding = "UPDATE c_orders SET strShippedStatus = '$strShippedStatus' WHERE strDocumentId = '$strDocumentId'";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Saved.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>