<?php

require_once 'connections.php';

if($_SERVER['REQUEST_METHOD'] == ['POST']) {
    $email = $_POST['email'];
    $subscription = $_POST['subscription'];

    $query = "UPDATE users_table SET 
    subscription = '$subscription' WHERE email = '$email'";

    $result['message'] = 'success';
    $result['success'] = '1';

    echo json_encode($result);

    mysqli_close($connection);
}

?>