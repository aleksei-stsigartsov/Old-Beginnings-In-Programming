<?php include "blocks/php.php"; ?>		

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>A2B PROJECTS</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="icon" href="photos/favicon.ico" type="image/x-icon" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Forum&display=swap" rel="stylesheet">
<style><?php echo file_get_contents("style.css"); ?></style>
</head>
<body>
<!--Менюшка сайта-->
<?php include "blocks/menu.php"; ?>	
<!--Конец меню-->

<!--Сервисы-->
<?php include "blocks/services.php"; ?>			
<!--Конец сервисов-->

<!--О нас-->
<?php include "blocks/about_us.php"; ?>
<!--О нас инфа закончилась-->

<!--Заказать-->
<?php include "blocks/order.php"; ?>
<!--Форма закончилась-->

<!--Подвал-->
<?php include "blocks/basement.php"; ?>
<!--Конец подвала-->

<!--Капирайт-->
<?php include "blocks/copyright.php"; ?>
<!--Капирайт кноец-->

<script src="js/jquery-3.5.1.slim.min.js" ></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</body>

</html>