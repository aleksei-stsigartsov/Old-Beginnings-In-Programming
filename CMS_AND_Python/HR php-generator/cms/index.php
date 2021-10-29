<?php
require_once 'config/connect.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Admin: CMS</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="icon" href="photos/favicon.ico" type="image/x-icon" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Forum&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
<style><?php echo file_get_contents("style.css"); ?></style>
</head>
<body>

<div class="container font4">
<div>
<!--Менюшка сайта-->
<?php include "blocks/menu.php"; ?>	
<!--Конец меню-->

<!--Приветствие-->
<?php include "blocks/start.php"; ?>	
<!--Конец приветствия-->
</div>
<div>
<!--Табличка-->
<?php include "blocks/table.php"; ?>	
<!--Конец таблички-->
</div>
<!--Начало формы добавления-->
<div class="alert alert-primary font4" role="alert">
<h3 class="bruh">Create NewsCard</h3>
</div>
	<div>
	<form action="vendor/create.php" method="post">
		<label for="exampleFormControlTextarea1">Title</label>
		<input class="form-control" type="text" name="title">
		<label for="exampleFormControlTextarea1">Description</label>
		<textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		<label for="exampleFormControlTextarea1">Price</label>
		<input type="number" step="0.01" class="form-control col" name="price"></br>
		<!--<div class="custom-file">
		<input type="file" class="custom-file-input" id="customFile">
		<label class="custom-file-label" for="customFile">Choose file</label>
		</div>-->
		<button type="submit" class="btn btn-primary col">Add new</button>
<!--Кноец формы добавления-->
	</div>
</div>


<script src="js/jquery-3.5.1.slim.min.js" ></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>

</html>