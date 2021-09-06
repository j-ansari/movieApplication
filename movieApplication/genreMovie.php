<?php

require_once 'connections.php';

$query = " SELECT * FROM genre ";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $genre_movie = array();

        $genre_movie['id'] = $row['id'];
        $genre_movie['genre_name'] = $row['genre_name'];

        array_push($response, $genre_movie);
    }

}else{
    echo "failed";
}

echo json_encode($response);
mysqli_close($connection);
?>