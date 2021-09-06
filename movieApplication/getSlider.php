<?php

require_once 'connections.php';

$query = " SELECT * FROM slider ";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $slider = array();

        $slider['id'] = $row['id'];
        $slider['movie_name'] = $row['movie_name'];
        $slider['image_url'] = $row['image_url'];
        
        array_push($response, $slider);
    }

}else{
    echo "failed";
}

echo json_encode($response);
mysqli_close($connection);

?>