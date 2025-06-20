<?php

$conn = new mysqli( hostname:"localhost",username:"root",password:"" ,database:"election");
if($conn->connect_error){
    die('unable to connect' . $conn->connect_error);
}