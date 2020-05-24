<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['documentId']) && isset($_REQUEST['qty'])){
        
        	//Getting post data 
		$documentId= $_REQUEST['documentId'];
		$qty= $_REQUEST['qty'];

        $adding = "UPDATE posts SET qty = '$qty'  WHERE documentId = '$documentId'";
       
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
