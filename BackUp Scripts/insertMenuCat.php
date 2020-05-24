<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['cat']) && isset($_REQUEST['type'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$cat = $_REQUEST['cat'];
		$type = $_REQUEST['type'];

        $adding = "INSERT INTO menu_cats (id,cat,type) VALUES ('$id','$cat','$type')";
       
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
