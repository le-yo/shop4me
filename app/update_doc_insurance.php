<?php
  
    require_once('dbConnect.php');
    
    $response = array(); 

 if(isset($_REQUEST['driver_id']) && isset($_REQUEST['insurance'])){
        
        	//Getting post data 
		$driver_id = $_REQUEST['driver_id'];
		$insurance = $_REQUEST['insurance'];



        $updating = "UPDATE driver_doc SET insurance = '$insurance' WHERE driver_id = '$driver_id'";
       
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
