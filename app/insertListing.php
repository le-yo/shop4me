<?php

    require_once('dbConnectRe.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strTitle']) 
    && isset($_REQUEST['strDescription']) && isset($_REQUEST['strLocation'])
    && isset($_REQUEST['strAddress']) && isset($_REQUEST['strNarrow'])
    && isset($_REQUEST['strType']) && isset($_REQUEST['strCounty'])
    && isset($_REQUEST['strDocumentId']) && isset($_REQUEST['strLatLng']) 
    && isset($_REQUEST['strPrice'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strTitle = $_REQUEST['strTitle'];
		$strDescription = $_REQUEST['strDescription'];
		$strLocation = $_REQUEST['strLocation'];
		$strAddress = $_REQUEST['strAddress'];
		$strNarrow = $_REQUEST['strNarrow'];
		$strType = $_REQUEST['strType'];
		$strCounty = $_REQUEST['strCounty'];
		$strDocumentId = $_REQUEST['strDocumentId'];
		$strLatLng = $_REQUEST['strLatLng'];
		$strPrice = $_REQUEST['strPrice'];


        $adding = "INSERT INTO p_listings (strUserId,strTitle,strDescription,strLocation,strAddress,strNarrow,strType,strCounty,strDocumentId,strLatLng,strPrice) VALUES ('$strUserId','$strTitle','$strDescription','$strLocation','$strAddress','$strNarrow','$strType','$strCounty','$strDocumentId','$strLatLng','$strPrice')";
       
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
