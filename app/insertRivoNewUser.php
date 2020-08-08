<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strUsername']) 
    && isset($_REQUEST['strPhone']) && isset($_REQUEST['strImageUrl'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strUsername = $_REQUEST['strUsername'];
		$strPhone = $_REQUEST['strPhone'];
		$strImageUrl = $_REQUEST['strImageUrl'];

        $adding = "INSERT INTO rivo_users (strUserId,strUsername,strPhone,strImageUrl) VALUES ('$strUserId','$strUsername','$strPhone','$strImageUrl')";
       
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
