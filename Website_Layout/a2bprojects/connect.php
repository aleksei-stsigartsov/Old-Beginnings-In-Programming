<?php
$host = "localhost";
$user = "root";
$pass = "";
$link = mysqli_connect($host,$user,$pass);
mysqli_select_db($link, "a2b_projects");
mysqli_query($link,"SET NAMES utf8");
?>