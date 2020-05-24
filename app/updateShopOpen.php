<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['user_id']) && isset($_REQUEST['open'])){
        
        	//Getting post data 
		$strUserId = $_REQUEST['user_id'];
		$strOpen = $_REQUEST['open'];

        $adding = "UPDATE shops SET open = '$strOpen' WHERE user_id = '$strUserId'";
       
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
