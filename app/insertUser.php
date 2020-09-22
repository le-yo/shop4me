<?php

    require_once('dbConnectRe.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strFname']) 
    && isset($_REQUEST['strLname']) && isset($_REQUEST['strEmail'])
    && isset($_REQUEST['strImageUrl']) && isset($_REQUEST['strDate'])
    && isset($_REQUEST['strPhone'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strFname = $_REQUEST['strFname'];
		$strLname = $_REQUEST['strLname'];
		$strEmail = $_REQUEST['strEmail'];
		$strImageUrl = $_REQUEST['strImageUrl'];
		$strDate = $_REQUEST['strDate'];
		$strPhone = $_REQUEST['strPhone'];


        $adding = "INSERT INTO p_users (strUserId,strFname,strLname,strEmail,strImageUrl,strDate,strPhone) VALUES ('$strUserId','$strFname','$strLname','$strEmail','$strImageUrl','$strDate','$strPhone')";
       
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
