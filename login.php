<?php
require_once 'connection.php';

if (
    isset($_POST['email']) && !empty($_POST['email']) &&
    isset($_POST['password']) && !empty($_POST['password'])
) {
    $email = $_POST['email'];
    $password = md5($_POST['password']); // Hash the entered password

    $sql = "SELECT * FROM user WHERE email='$email' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        session_start();
        $_SESSION['isloggedin'] = 1;

        $row = $result->fetch_assoc();
        $_SESSION['email'] = $email;
        $_SESSION['user_id'] = $row['id'];
        $_SESSION['role_id'] = $row['role_id'];
        $_SESSION['name'] = $row['name'];
        header('Location:home.php');
    } else {
        header('Location:login1.php');
    }
}
