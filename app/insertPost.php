<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['title']) && isset($_REQUEST['descr']) 
    && isset($_REQUEST['price']) && isset($_REQUEST['dateCreated'])
    && isset($_REQUEST['imageUrl']) && isset($_REQUEST['documentId'])
    && isset($_REQUEST['category']) && isset($_REQUEST['size']) && isset($_REQUEST['brand'])
    && isset($_REQUEST['prev_price']) && isset($_REQUEST['user_id'])
    && isset($_REQUEST['qty'])){
        
        	//Getting post data 
		$title = $_REQUEST['title'];
		$descr = $_REQUEST['descr'];
		$price = $_REQUEST['price'];
		$dateCreated = $_REQUEST['dateCreated'];
		$imageUrl = $_REQUEST['imageUrl'];
		$documentId = $_REQUEST['documentId'];
		$category = $_REQUEST['category'];
		$size = $_REQUEST['size'];
		$qty = $_REQUEST['qty'];
		$brand = $_REQUEST['brand'];
		$prev_price = $_REQUEST['prev_price'];
		$user_id = $_REQUEST['user_id'];
		$shop_id = $_REQUEST['shop_id'];

        $adding = "INSERT INTO posts (title,price,descr,dateCreated,imageUrl,documentId,category,size,brand,prev_price,user_id,shop_id,qty) VALUES ('$title','$price','$descr','$dateCreated','$imageUrl','$documentId','$category','$size','$brand','$prev_price','$user_id','$shop_id','$qty')";
       
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
