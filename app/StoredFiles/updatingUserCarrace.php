<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strUsername']) 
    && isset($_REQUEST['strEmail']) && isset($_REQUEST['strPhone'])
    && isset($_REQUEST['strImageUrl'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strUsername = $_REQUEST['strUsername'];
		$strEmail = $_REQUEST['strEmail'];
		$strPhone = $_REQUEST['strPhone'];
		$strImageUrl = $_REQUEST['strImageUrl'];

        $adding = "UPDATE c_users SET strUsername = '$strUsername',strEmail = '$strEmail',strPhone = '$strPhone',strImageUrl = '$strImageUrl' WHERE strUserId = '$strUserId'";
       
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