<?php
   
    require_once('dbConnect.php');
    
    $response = array(); 
    
    if(isset($_REQUEST['id']) && isset($_REQUEST['image']) 
    && isset($_REQUEST['menuitem']) && isset($_REQUEST['shop_id'])
    && isset($_REQUEST['price']) && isset($_REQUEST['food_cat'])
    && isset($_REQUEST['dateCreated']) && isset($_REQUEST['type'])){
        
        	//Getting post data 
		$id = $_REQUEST['id'];
		$image = $_REQUEST['image'];
		$menuitem = $_REQUEST['menuitem'];
		$shop_id = $_REQUEST['shop_id'];
		$price = $_REQUEST['price'];
		$food_cat = $_REQUEST['food_cat'];
		$type = $_REQUEST['type'];
		$dateCreated = $_REQUEST['dateCreated'];
		
		

        $adding = "INSERT INTO menu_items (id,image,menuitem,shop_id,price,food_cat,dateCreated,type) VALUES ('$id','$image','$menuitem','$shop_id','$price','$food_cat','$dateCreated','$type')";
       
       $result = mysqli_query($conn,$adding);
        
    if ($result>0) {
        // successfully inserted into database
        $response["status"] = "0";
        $response["message"] = "Saved.";
    } else {
        // failed to insert row
        $response["status"] = "1";
        $response["message"] = "Something went wrong..!";
    }
    // echoing JSON response
    echo json_encode($response);
        
    }
?>
