<?php
require_once 'connections.php';

$email = @$_POST['email_address'];
$phone_number = @$_POST['phone_number'];
$password = @$_POST['password'];

$emailMessage ="email not valid";
$loginSuccess = "Login is Success!!";
$loginFailed = "Login Failed Please Checked";
$connectedServer = "Server not Responsed";

$isValidEmail = filter_var($email, FILTER_VALIDATE_EMAIL);

if($connection){
    
    if ($isValidEmail === false){
        echo $emailMessage;

    } else {

        $checkEmailQuery = "SELECT * FROM users_table WHERE email_address LIKE '$email' ";
        $emailQuery = mysqli_query($connection, $checkEmailQuery);
        
        if (mysqli_num_rows($emailQuery) > 0){

            $checkLoginQuery = "SELECT * FROM users_table WHERE email_address LIKE 
            '$email' AND phone_number LIKE '$phone_number' AND password LIKE '$password' ";

            $loginQuery = mysqli_query($connection, $checkLoginQuery);
            
            if(mysqli_num_rows($loginQuery) > 0){
                echo $loginSuccess;
            }
            else {
                echo $loginFailed;
            }

        } else {

            echo $emailMessage;
        }
    }

} else {
    echo $connectedServer;
}

?>