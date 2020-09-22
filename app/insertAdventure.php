<?php

    require_once('dbConnectRe.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strTitle']) 
    && isset($_REQUEST['strDescription']) && isset($_REQUEST['strDocumentId'])
    && isset($_REQUEST['strListingId']) && isset($_REQUEST['strType'])
    && isset($_REQUEST['strCounty']) ){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strTitle = $_REQUEST['strTitle'];
		$strDescription = $_REQUEST['strDescription'];
		$strDocumentId = $_REQUEST['strDocumentId'];
		$strListingId = $_REQUEST['strListingId'];
		$strDocumentId = $_REQUEST['strDocumentId'];
		$strListingId = $_REQUEST['strListingId'];
		$strType = $_REQUEST['strType'];
		$strCounty = $_REQUEST['strCounty'];


        $adding = "INSERT INTO p_adventures (strUserId,strDocumentId,strTitle,strDescription,strListingId,strType,strCounty) VALUES ('$strUserId','$strDocumentId','$strTitle','$strDescription','$strListingId','$strType','$strCounty')";
       
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
