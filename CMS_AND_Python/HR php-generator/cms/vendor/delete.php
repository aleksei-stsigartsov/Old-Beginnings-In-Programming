<?php
require_once '../config/connect.php';

$id = $_GET['id'];

mysqli_query($link, "DELETE FROM `cards` WHERE `cards`.`id` = '$id'");

header("Location:http://localhost/cms/#");
?>