<?php
require_once 'config/connect.php';
?>

<!DOCTYPE html>
<html>
<head>
<title>DEFLI</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<link rel="icon" href="photos/favicon222.ico" type="image/x-icon" />
<style><?php echo file_get_contents("style.css"); ?></style>
</head>
<body class="bg_wall">
<!--Менюшка сайта-->
<?php include "blocks/menu2.php"; ?>	
<!--Конец меню-->

<!--Приветствие-->
<?php include "blocks/adversiting.php"; ?>
<img src="photos/gif.gif" class="gifgift" alt="a2bprojects" href="#">	
<!--Конец приветствия--></br>
<div class="container">
<div class="row">
<?php
$result = mysqli_query($link, "SELECT * FROM cards WHERE id > 1");
                while($stroka=mysqli_fetch_assoc($result)){
                    echo '<div class="col-4">
                    <div class="card">
                    <img src="photos/example.png" class="card-img-top" alt="">
                    <div class="card-body">
                    <h4>'.$stroka['title'].'</h4>
                    <p class="card-text">'.$stroka['description'].'</p>
					<p class="card-text btn btn-light">' .$stroka['price'].' € </p>
					<p href="#" class="btn btn-dark">Приобрести</p>
                    </div>
                    </div>
                    </div>';
                }
?>
</div>
</div>
</body>

<script src="js/jquery-3.5.1.slim.min.js" ></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>	
</html>