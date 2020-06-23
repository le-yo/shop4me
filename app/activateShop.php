<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['status'])){
        
        	//Getting post data 
		$strShopId = $_REQUEST['id'];
		$strStatus = $_REQUEST['status'];

        $adding = "UPDATE shops SET status = '$strStatus' WHERE id = '$strShopId'";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Status changed.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
