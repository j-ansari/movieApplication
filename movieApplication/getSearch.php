<?php

require_once 'connections.php';

$movie_name = @$_GET ['movie_name'];

$query = " SELECT * FROM home_information 
WHERE movie_name LIKE '%$movie_name%'";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $information_movies = array();

        $information_movies['id'] = $row['id'];
        $information_movies['movie_name'] = $row['movie_name'];
        $information_movies['image_url'] = $row['image_url'];
        $information_movies['director_name'] = $row['director_name'];
        $information_movies['imdb_rate'] = $row['imdb_rate'];
        $information_movies['published'] = $row['published'];
        $information_movies['movie_time'] = $row['movie_time'];
        $information_movies['category_name'] = $row['category_name'];
        $information_movies['imdb_rank'] = $row['imdb_rank'];
        $information_movies['genre_name'] = $row['genre_name'];

        array_push($response, $information_movies);
    }

}else{
    echo 'failed';
}

echo (json_encode($response));
mysqli_close($connection);

?>