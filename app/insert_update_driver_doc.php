<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['driver_id']) && isset($_REQUEST['id']) 
    && isset($_REQUEST['photo']) && isset($_REQUEST['dl'])
    && isset($_REQUEST['badge_dl']) && isset($_REQUEST['insurance'])
      && isset($_REQUEST['ntsa'])){
        
        	//Getting post data 
		$driver_id = $_REQUEST['driver_id'];
		$id = $_REQUEST['id'];
		$photo = $_REQUEST['photo'];
		$dl = $_REQUEST['dl'];
		$badge_dl = $_REQUEST['badge_dl'];
		$insurance = $_REQUEST['insurance'];
		$ntsa = $_REQUEST['ntsa'];

        $adding = "INSERT INTO driver_doc (driver_id,id,photo,dl,badge_dl,insurance,ntsa) VALUES ('$driver_id','$id','$photo','$dl','$badge_dl','$insurance','$ntsa')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly saved.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);

    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
