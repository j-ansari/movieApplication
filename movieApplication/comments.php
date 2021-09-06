<?php

require_once 'connections.php';

if($_SERVER ['REQUEST_METHOD'] == "POST") {

    $item_id = @$_POST['item_id'];
    $comment = @$_POST['comment'];
    $email = @$_POST['user_email'];
    $confirmation = 0;

    $query = "INSERT INTO comments (item_id , comment , user_email , confirmation) 
    VALUES ('$item_id', '$comment', '$email', '$confirmation')";

    if(mysqli_query($connection, $query)) {

       $result['message'] = "Success";
       $result['Success'] = "1";

       echo json_encode($result);

    }

    mysqli_close($connection);

}

?>