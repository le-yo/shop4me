<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['user_id']) && isset($_REQUEST['work_place']) 
    && isset($_REQUEST['home']) && isset($_REQUEST['gym'])){
        
        	//Getting post data 
		$user_id = $_REQUEST['user_id'];
		$work_place = $_REQUEST['work_place'];
		$home = $_REQUEST['home'];
		$gym = $_REQUEST['gym'];

        $adding = "INSERT INTO default_locations (user_id,home,work_place,gym) VALUES ('$user_id','$home','$work_place','$gym')";
       
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
