<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strDeleted']) && isset($_REQUEST['strDocumentId'])){
        
        	//Getting post data 
		$strDeleted = $_REQUEST['strDeleted'];
		$strDocumentId = $_REQUEST['strDocumentId'];

        $adding = "UPDATE c_orders SET strDeleted = '$strDeleted' WHERE strDocumentId = '$strDocumentId'";
       
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