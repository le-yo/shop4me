<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strBar']) && isset($_REQUEST['strTitle']) && isset($_REQUEST['strPrice'])){
        
        	//Getting post data 
		$strBar = $_REQUEST['strBar'];
		$strTitle = $_REQUEST['strTitle'];
		$strPrice = $_REQUEST['strPrice'];

        $adding = "INSERT INTO cs_items (strBar,strTitle,strPrice) VALUES ('$strBar','$strTitle','$strPrice')";
       
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