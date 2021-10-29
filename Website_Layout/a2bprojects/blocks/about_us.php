<section id="aboutus" class="section">
<div class="image">
<?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=3");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#" width="1519px"  class="shapkaPos" id="about_us">';}
?>
<h3><span><?php echo $terms['aboutUs2']?></span></h3>
</div>

<div class="container">
<div class="boxx" >
  <p>
  <?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=11");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#" height="400px" width="550px"class="leftimg ilus" >';}
?>
  <h4 class="font3"><?php echo $terms['ourTeam']?></h4>
  <p class="font1"><?php echo $terms['teamText']?>
  </p>
  <?php
  echo '<button type="button" class="btn btn-outline-dark font1" onClick=location.href="#services"> '.$terms['perehod'].'</button>'
   ?> 
	<p class="font3"><?php echo $terms['founDers']?><p>
  <p> <?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=7");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#" height="150px" alt="" class="round scale" >';}
?>
 <?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=8");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#" height="150px" alt="" class="round scale" >';}
?>	
 <?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=9");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#" height="150px" alt="" class="round scale" >';}
?>	
  
  </p>
<pre><p><?php echo $terms['mainNames']?>
</p></pre>
  

</div></div>
</section>