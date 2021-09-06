<?php

require_once 'connections.php';

$item_id = @$_GET ['item_id'];
$query = " SELECT * FROM series_season WHERE item_id = '$item_id'";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $information_movies = array();

        $information_movies['id'] = $row['id'];
        $information_movies['item_id'] = $row['item_id'];
        $information_movies['season_number'] = $row['season_number'];
        $information_movies['episode_count'] = $row['episode_count'];
        $information_movies['image_url'] = $row['image_url'];

        array_push($response, $information_movies);
    }

}else{
    echo "failed";
}

echo json_encode($response);
mysqli_close($connection);

?>