<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['image']) 
    && isset($_REQUEST['category']) && isset($_REQUEST['dateCreated'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$image = $_REQUEST['image'];
		$category = $_REQUEST['category'];
		$dateCreated = $_REQUEST['dateCreated'];

        $adding = "INSERT INTO shop_types (id,image,category,dateCreated) VALUES ('$id','$image','$category','$dateCreated')";
       
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
