<section id="services" class="section">
<div class="image">
<?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=2");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#" width="1519px" >';}
?>
<h2><span id="services"><?php echo $terms['teeNused2']?></span></h2>
<?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=4");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#"	class="gifgift">';}
?>
	
</div>
</br>
<div class="container" >
     <?php
                
                if(empty($_GET['ln'])) {$pageLang='ENG';}
                else {$pageLang=$_GET['ln'];}

                $resService = mysqli_query($link, "SELECT * FROM services WHERE lang='$pageLang' AND listOrder<=1 ORDER BY  listOrder");
                while($stroka=mysqli_fetch_assoc($resService)){
                    echo '<div class="col-6">
                    <div class="card serviceOptions">
                    <img src="photos/'.$stroka['photo'].'" class="card-img-top" alt="">
                    <div class="card-body">
                    <h5 class="card-title font3">'.$stroka['title'].'</h5>
                    <p class="card-text font1">'.$stroka['theText'].'</p>
					<button type="button" class="btn btn-outline-dark font1"> '.$terms['loeEdasi'].'</button>
                    </div>
                    </div>
                    </div>';
                }
                ?>
				     <?php
                
                if(empty($_GET['ln'])) {$pageLang='ENG';}
                else {$pageLang=$_GET['ln'];}

                $resService = mysqli_query($link, "SELECT * FROM services WHERE lang='$pageLang' AND listOrder<=1 ORDER BY  listOrder");
                while($stroka=mysqli_fetch_assoc($resService)){
                    echo '<div class="col-6">
                    <div class="card serviceOptions2">
                    <img src="photos/'.$stroka['photo'].'" class="card-img-top" alt="">
                    <div class="card-body">
                    <h5 class="card-title font3">'.$stroka['title'].'</h5>
                    <p class="card-text font1">'.$stroka['theText'].'</p>
					<button type="button" class="btn btn-outline-dark font1"> '.$terms['loeEdasi'].'</button>
                    </div>
                    </div>	
                    </div>';
                }
                ?>
</div>
</section>	