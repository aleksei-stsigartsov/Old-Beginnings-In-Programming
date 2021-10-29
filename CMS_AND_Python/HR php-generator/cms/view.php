<?php
require_once 'config/connect.php';

$card_id = $_GET['id'];
$card = mysqli_query($link, "SELECT * FROM `cards` WHERE `id` = '$card_id'");
$card = mysqli_fetch_assoc($card);
?>

<!DOCTYPE html>
<html>
<head>
<title>Card View Page</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="icon" href="photos/favicon.ico" type="image/x-icon" />
<style><?php echo file_get_contents("style.css"); ?></style>
</head>
<body class="bg_wall">
<!--Менюшка сайта-->
<?php include "blocks/menu.php"; ?>	
<!--Конец меню-->

<!--Приветствие-->
<?php include "blocks/adversiting.php"; ?>
<img src="photos/gif.gif" class="gifgift" alt="a2bprojects" href="#">	
<!--Конец приветствия--></br>

<div class="container">
<div class="card" style="width: 18rem;">
  <img src="photos/example.png" class="card-img-top" alt="...">
  <div class="card-body">
	<h4><?= $card['title'] ?></h4>
    <p class="card-text"><?= $card['description'] ?></p>
	<p class="card-text btn btn-danger"><?= $card['price'] ?> € </p>
	<p href="#" class="btn btn-dark">Приобрести</p>
  </div>
</div>
</div>
</body>

<script src="js/jquery-3.5.1.slim.min.js" ></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</html>