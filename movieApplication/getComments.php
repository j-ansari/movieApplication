<?php

require_once 'connections.php';

$item_id = @$_GET['item_id'];

$query = " SELECT * FROM comments WHERE item_id = '$item_id' AND confirmation = 1";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $movie_comment = array();

        $movie_comment['item_id'] = $row['item_id'];
        $movie_comment['comment'] = $row['comment'];
        $movie_comment['user_email'] = $row['user_email'];

        array_push($response, $movie_comment);
    }

} else {
    echo $response['success'] = 'nothing';
   //echo "failed";
}

echo (json_encode($response));
mysqli_close($connection);

?>