<?php

    require_once('dbConnectRe.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strListingId']) && isset($_REQUEST['strImageUrl'])){
        
        	//Getting post data 
		$strListingId = $_REQUEST['strListingId'];
		$strImageUrl = $_REQUEST['strImageUrl'];


        $adding = "INSERT INTO p_listingimages (strListingId,strImageUrl) VALUES ('$strListingId','$strImageUrl')";
       
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
