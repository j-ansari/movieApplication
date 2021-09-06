<?php

require_once 'connections.php';


$query = " SELECT * FROM buy_account ";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $information_movies = array();

        $information_movies['id'] = $row['id'];
        $information_movies['price'] = $row['price'];
        $information_movies['month'] = $row['month'];

        array_push($response, $information_movies);
    }

}else{
    echo "failed";
}

echo json_encode($response);
mysqli_close($connection);

?>