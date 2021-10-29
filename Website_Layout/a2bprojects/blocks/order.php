<section id="order2" class="section">
<div class="container" >
<div class="boxx" id="order">
<h1 align="center" class="font3"><?php echo $terms['form12']?></h1>  
 <div class="col">
		<form  onsubmit="return checkForm(this);" method="post" action="">
  <div class="form-group">
    <input type="text" class="form-control font2" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<?php echo $terms['naMe']?>" required="required" name="firstLastName">
    </div>
	<div class="form-group">
  </div>
  <div class="form-group">
    <input type="phone" class="form-control font2" id="exampleInputPassword1" placeholder="<?php echo $terms['phoneNum']?>"  name="phoneNumber">
  </div>
	<div class="form-group">
    <textarea class="form-control font2" id="exampleFormControlTextarea1" rows="3" name="comment" placeholder="<?php echo $terms['comMent']?>"></textarea>
  </div>		
  <div class="form-group form-check">

	  <p>   <?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=10");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" width="200px" height="50" border="1" alt="CAPTCHA">';}
?>	</p>
<p><input type="text" size="6" maxlength="5" name="captcha" value=""><br>
<small class="font1"><?php echo $terms['enterCode']?></small></p>
  </div>
<button type="button" class="btn btn-outline-dark font1 w-100"><?php echo $terms['saaDa']?></button>
</form>

	</div>		
	<div class="col d-md-block d-xs-none d-sm-none">
	</div>
	</div>	
	</div>
	<?php
    $result229 = mysqli_query($link, "SELECT value FROM settings WHERE id=6");
	while($settings=mysqli_fetch_assoc($result229)){echo '<img src="photos/'.$settings['value'].'" href="#"	class="gifgift2">';}
?>	
</section>