<?php
   if($_SERVER['REQUEST_METHOD']=='POST'){
    require_once('dbConnect.php');
    
    $response = array(); 
        
        	//Getting post data 
		$user_id = $_REQUEST['user_id'];
		$something_to_update = $_REQUEST['something_to_update'];
		$val = $_REQUEST['val'];



        $updating = "UPDATE default_locations SET '$something_to_update' = '$val' WHERE user_id = '$user_id'";
       
       $result_update = mysqli_query($conn,$updating);

//updating        
    if ($result_update) {
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
