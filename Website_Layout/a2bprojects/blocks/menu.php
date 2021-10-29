<section id="menu" class="section">
<div class="flyMenu">
<div class="row">
<?php
    $result228 = mysqli_query($link, "SELECT value FROM settings WHERE id=1");
	while($settings=mysqli_fetch_assoc($result228)){echo '<img src="photos/'.$settings['value'].'" height=50px" class="scale">';}
?>
   <ul><a class="font2 menupadding" href="#" ><?php echo $menu['esiLeht']?></a>
   <a class="font2 menupadding" href="#services"><?php echo $menu['teeNused']?></a>
   <a class="font2 menupadding" href="#about_us"><?php echo $menu['aboutUs']?></a>
   <a class="font2 menupadding" href="#order"><?php echo $menu['telliDa']?></a>
   </ul>
   

		<?php
		$langTable = mysqli_query($link, "SELECT DISTINCT lang FROM languages");
        while($oneLang=mysqli_fetch_assoc($langTable)){
            echo '<ul>
            <a style="margin-left:150px;" class="font2" href="?ln='.$oneLang['lang'].'">'.$oneLang['lang'].'</a>
        </ul>'; 
        }
        ?>
</div></div>