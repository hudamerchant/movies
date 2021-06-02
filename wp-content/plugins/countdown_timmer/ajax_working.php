<?php
require 'assets/my_functions.php';

if(isset($_POST['submit']))
{
    $title          = $_POST['title'];
    $time           = $_POST['date'];
    $after_expiry   = $_POST['after_expire'];
    $message        = $_POST['expiry_msg'];
    $created_at     = date("Y-m-d H:i:s");

    $result = insertdata_in_database($title, $time, $after_expiry, $message, $created_at);
    if($result){
        echo $result;
    }
 
}