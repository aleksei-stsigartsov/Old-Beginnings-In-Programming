<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$title = $_POST['title'];
$description = $_POST['description'];
$price = $_POST['price'];

mysqli_query($link, "UPDATE `cards` SET `title` = '$title', `price` = '$price', `description` = '$description' WHERE `cards`.`id` = '$id'");

header("Location:http://localhost/cms/#");
?>
