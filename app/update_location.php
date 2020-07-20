<?php
  
    require_once('dbConnect.php');
    
    $response = array(); 

 if(isset($_REQUEST['id']) && isset($_REQUEST['latlng'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$latlng = $_REQUEST['latlng'];



        $updating = "UPDATE shops SET latlng = '$latlng' WHERE id = '$id'";
       
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
