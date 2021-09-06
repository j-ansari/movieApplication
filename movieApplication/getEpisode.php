<?php

require_once 'connections.php';

$season_id = @$_GET ['season_id'];
$query = " SELECT * FROM series_episode WHERE season_id = '$season_id'";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $information_movies = array();

        $information_movies['id'] = $row['id'];
        $information_movies['season_id'] = $row['season_id'];
        $information_movies['episode_detail'] = $row['episode_detail'];
        $information_movies['episode_time'] = $row['episode_time'];
        $information_movies['play_url_episode'] = $row['play_url_episode'];

        array_push($response, $information_movies);
    }

}else{
    echo "failed";
}

echo json_encode($response);
mysqli_close($connection);

?>