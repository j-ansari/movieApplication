<?php
require_once 'connections.php';

$user_name = @$_POST['user_name'];
$email = @$_POST['email_address'];
$phone_number = @$_POST['phone_number'];
$password = @$_POST['password'];
//$subscription = @$_POST['subscription'];

$passwordMessage = "password not valid";
$emailMessage ="email not valid";
$userNameMessage = "user name is correct";
$signUpSuccess = "Register is Success!!";
$signUpFailed = "Register Failed Please Checked";
$connectedServer = "Server not Responsed";

$isValidEmail = filter_var($email, FILTER_VALIDATE_EMAIL);

if($connection){

    if(strlen($password) > 15 || strlen($password) < 7){
        echo $passwordMessage;
    }

     else if ($isValidEmail === false){
        echo $emailMessage;

    } else {

        $checkUserNameQuery = 
        "SELECT * FROM users_table WHERE user_name LIKE '$user_name' ";
        $userNameQuery = mysqli_query($connection , $checkUserNameQuery);

        $checkEmailQuery = "SELECT * FROM users_table WHERE email_address LIKE '$email' ";
        $emailQuery = mysqli_query($connection, $checkEmailQuery);

        if(mysqli_num_rows($userNameQuery) > 0){
            echo $userNameMessage;
        }

        else if (mysqli_num_rows($emailQuery) > 0){
            echo $emailMessage;

        } else {

            $registerQuery = 
            "INSERT INTO users_table (user_name , email_address , phone_number , password)
            VALUES ('$user_name', '$email', '$phone_number', '$password')";
            
            if(mysqli_query($connection, $registerQuery)){
                echo $signUpSuccess;
            }
            else {
                echo $signUpFailed;
            }
        }
    }

} else {
    echo $connectedServer;
}

?>