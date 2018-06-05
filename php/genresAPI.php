<?php

header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include_once('confi.php');


//SQL query
$sql = "
SELECT g.name, COUNT(s.title) as songs, SUM(s.duration) as totalLength FROM `GENRES` g INNER join songs s on g.id=s.genre GROUP BY g.name;
";
    
 //getting data
$result = $mysqli->query($sql);


if (mysqli_connect_errno()) {
        $response["success"] = 0;
		$response["message"] = "Error conection";
}else{
   
    if ($result->num_rows > 0) {
        // Fetching all the data
        $array = NULL;
        while($row = $result->fetch_assoc())
            $array[] = $row;
         
         
        $response["success"] = 1;
        $response["data"]= $array;
		
		echo json_encode($response["data"]);
		
    }else{
            $response["success"] = 0;
            $response["message"] = "Error";;
    }
   
    mysqli_close($mysqli);
}
?>