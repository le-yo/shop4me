<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['driver_id']) && isset($_REQUEST['full_name']) 
    && isset($_REQUEST['id']) && isset($_REQUEST['plate'])
    && isset($_REQUEST['vehicle_type']) && isset($_REQUEST['phone'])
    && isset($_REQUEST['date_joined']) && isset($_REQUEST['location'])
    && isset($_REQUEST['approved'])){
        
        	//Getting post data 
		$driver_id = $_REQUEST['driver_id'];
		$full_name = $_REQUEST['full_name'];
		$id = $_REQUEST['id'];
		$plate = $_REQUEST['plate'];
		$vehicle_type = $_REQUEST['vehicle_type'];
		$phone = $_REQUEST['phone'];
		$date_joined = $_REQUEST['date_joined'];
		$location = $_REQUEST['location'];
		$approved = $_REQUEST['approved'];

        $adding = "INSERT INTO drivers (driver_id,full_name,id,phone,vehicle_type,plate,date_joined,location,approved) VALUES ('$driver_id','$full_name','$id','$phone','$vehicle_type','$plate','$date_joined','$location','$approved')";
       
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
