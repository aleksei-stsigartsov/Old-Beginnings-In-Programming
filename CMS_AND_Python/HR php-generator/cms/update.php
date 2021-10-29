<?php
require_once 'config/connect.php';

$card_id = $_GET['id'];
$card = mysqli_query($link, "SELECT * FROM `cards` WHERE `id` = '$card_id'");
$card = mysqli_fetch_assoc($card);
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Update page</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css" />
	<link rel="icon" href="photos/favicon.ico" type="image/x-icon" />
</head>
<body style="height:700px; background: linear-gradient(to right, white, lightblue);"
<div class="container">
<!--Менюшка сайта-->
<?php include "blocks/menu.php"; ?>	
<!--Конец меню-->
<!--Приветствие-->
<?php include "blocks/start.php"; ?>	
<!--Конец приветствия-->

<!--Начало формы редактирования-->
<div class="alert alert-primary font4" role="alert">
<h3 class="bruh">Update NewsCard</h3>
</div>
	<form action="vendor/update.php" method="post">
	 <input type="hidden" name="id" value="<?= $card['id']?>">
		<label for="exampleFormControlTextarea1">Title</label>
		<input class="form-control" value="<?= $card['title']?>" type="text" name="title">
		<label for="exampleFormControlTextarea1">Description</label>
		<textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"><?= $card['description'] ?></textarea>
		<label for="exampleFormControlTextarea1">Price</label>
		<input type="number" step="0.01" class="form-control col"  value="<?= $card['price'] ?>" name="price"></br>
		<button type="submit" class="btn btn-primary col">Update</button>
<!--Конец формы редактирования-->
</div>
</body>

<script src="js/jquery-3.5.1.slim.min.js" ></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</html>