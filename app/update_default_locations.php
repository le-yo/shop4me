<?php
   if($_SERVER['REQUEST_METHOD']=='POST'){
    require_once('dbConnect.php');
    
    $response = array(); 
        
        	//Getting post data 
		$user_id = $_REQUEST['user_id'];
		$work_place = $_REQUEST['work_place'];
		$home = $_REQUEST['home'];
		$gym = $_REQUEST['gym'];



        $updating = "UPDATE default_locations SET home = '$home', work_place = '$work_place', gym = '$gym' WHERE user_id = '$user_id'";
       
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
