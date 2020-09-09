<?php
	
	require_once('dbConnect.php');
	
	$strPostId = $_POST['strPostId'];
	
if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}

// $sql = "SELECT*, SUM(strRate) AS 'sum' FROM c_ratings WHERE strPostId = '$strPostId'";
// $result = $conn->query($sql);
// $rows = array();
//     while($temp = mysqli_fetch_assoc($result)) {
//         $rows[] = $temp;
// }
$query = mysqli_query($con, "SELECT *, SUM(strRate) AS 'sum' ROM c_ratings;");
$row = mysqli_fetch_assoc($query);
$sum = $row['sum'];
if($query)
{
   $data[]['TotalIncome'] = $sum;
   $result = array("transactions" => $data);
   echo json_encode($result);
}
myslqi_close($con);

?>
