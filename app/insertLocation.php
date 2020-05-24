<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['name']) 
    && isset($_REQUEST['rate']) && isset($_REQUEST['service_rate'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$name = $_REQUEST['name'];
		$rate = $_REQUEST['rate'];
		$service_rate = $_REQUEST['service_rate'];

        $adding = "INSERT INTO pickup_locations (id,name,rate,service_rate) VALUES ('$id','$name','$rate','$service_rate')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Successfuly uploaded.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Error: ".mysqli_error($con);
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
