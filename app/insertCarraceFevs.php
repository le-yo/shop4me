<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strCat'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strCat = $_REQUEST['strCat'];

        $adding = "INSERT INTO c_fevs (strUserId,strCat) VALUES ('$strUserId','$strCat')";
       
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
