<?php
	
	require_once('dbConnect.php');
	
	$strPostId = $_POST['strPostId'];
	
if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}

$sql = "SELECT SUM(strRate) FROM c_ratings";
$result = $conn->query($sql);
$rows = array();
    while($temp = mysqli_fetch_assoc($result)) {
        $rows[] = $temp;
}

myslqi_close($con);

?>
