<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['cat']) && isset($_REQUEST['type']) && isset($_REQUEST['shop_id'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$cat = $_REQUEST['cat'];	    
		$shop_id = $_REQUEST['shop_id'];
		$type = $_REQUEST['type'];
	  

        $adding = "INSERT INTO menu_cats (id,cat,type,shop_id) VALUES ('$id','$cat','$type','$shop_id')";
       
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
