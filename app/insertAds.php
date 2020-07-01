<?php

    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['imageUrl']) && isset($_REQUEST['docRef'])
      && isset($_REQUEST['shop_id']) && isset($_REQUEST['shop_name'])
      && isset($_REQUEST['isShop'])){
        
        	//Getting post data 
		$docRef = $_REQUEST['docRef'];
		$imageUrl = $_REQUEST['imageUrl'];
		$shop_id = $_REQUEST['shop_id'];
		$shop_name = $_REQUEST['shop_name'];
		$isShop = $_REQUEST['isShop'];

        $adding = "INSERT INTO ads (docRef,imageUrl,shop_id,shop_name,isShop) VALUES ('$docRef','$imageUrl','$shop_id','$shop_name','$isShop')";
       
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
