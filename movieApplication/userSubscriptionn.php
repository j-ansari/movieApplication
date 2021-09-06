<?php

require_once 'connections.php';

$email = @$_GET['email'];

$query = " SELECT subscription FROM users_table WHERE email = '$email'";

$result = mysqli_query($connection , $query);

if($result){

    $response = array();

    while($row = mysqli_fetch_array($result)){

        $user_subscription = array();

        $user_subscription['subscription'] = $row['subscription'];

        array_push($response, $user_subscription);
    }

} else {
    echo $response['success'] = 'nothing';
   //echo "failed";
}

echo (json_encode($response));
mysqli_close($connection);

?>