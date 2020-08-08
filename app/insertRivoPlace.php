<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['strUserId']) && isset($_REQUEST['strName']) 
    && isset($_REQUEST['strAdress']) && isset($_REQUEST['strLatLng'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['strUserId'];
		$strName = $_REQUEST['strName'];
		$strAdress = $_REQUEST['strAdress'];
		$strLatLng = $_REQUEST['strLatLng'];

        $adding = "INSERT INTO rivo_places (strUserId,strName,strAdress,strLatLng) VALUES ('$strUserId','$strName','$strAdress','$strLatLng')";
       
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
