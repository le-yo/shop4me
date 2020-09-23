<?php

    require_once('dbConnect.php');
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strUsername']) 
    && isset($_REQUEST['strPhone']) && isset($_REQUEST['strImageUrl'])
    && isset($_REQUEST['strEmail']) && isset($_REQUEST['strYear'])
    && isset($_REQUEST['strPassword']) && isset($_REQUEST['strRole'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strUsername = $_REQUEST['strUsername'];
		$strPhone = $_REQUEST['strPhone'];
		$strImageUrl = $_REQUEST['strImageUrl'];
		$strEmail = $_REQUEST['strEmail'];
		$strYear = $_REQUEST['strYear'];
		$strPassword = $_REQUEST['strPassword'];
		$strRole = $_REQUEST['strRole'];

		$strYear = $_REQUEST['strYear'];


        $adding = "INSERT INTO c_users (strUserId,strUsername,strPhone,strImageUrl,strEmail,strYear,strPassword,strRole) VALUES ('$strUserId','$strUsername','$strPhone','$strImageUrl','$strEmail','$strYear','$strPassword','$strRole')";
       
       $result = mysqli_query($conn,$adding);
    
    $response = array(); 
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly sents.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($result);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
