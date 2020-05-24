<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['imageUrl']) && isset($_REQUEST['docRef'])){
        
        	//Getting post data 
		$docRef = $_REQUEST['docRef'];

		$imageUrl = $_REQUEST['imageUrl'];

        $adding = "INSERT INTO ads (docRef,imageUrl) VALUES ('$docRef','$imageUrl')";
       
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
