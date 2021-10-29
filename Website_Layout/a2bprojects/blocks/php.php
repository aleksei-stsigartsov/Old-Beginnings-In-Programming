<section id="php1" class="section">
<?php
require_once "connect.php";
$langTable=mysqli_query($link,"SELECT DISTINCT lang FROM languages");
$langTest=false;
while($oneLang=mysqli_fetch_assoc($langTable)){
	if($_GET['ln']==$oneLang['lang']){$langTest=true;} 
}
if($langTest==false){$_GET['ln']='ENG';}
if(empty($_GET['ln'])){$pageLang='ENG';}else{$pageLang=$_GET['ln'];}

$termsTable=mysqli_query($link, "SELECT * FROM languages WHERE lang='$pageLang'");
$languages=array();
while($oneTerm=mysqli_fetch_assoc($termsTable)){
	$languages[$oneTerm['code']]=$oneTerm['lang'];
}
?>
<?php
require_once "connect.php";
$langTable2=mysqli_query($link,"SELECT DISTINCT lang FROM menu");
$langTest2=false;
while($oneLang2=mysqli_fetch_assoc($langTable2)){
	if($_GET['ln']==$oneLang2['lang']){$langTest2=true;} 
}
if($langTest2==false){$_GET['ln']='ENG';}
if(empty($_GET['ln'])){$pageLang2='ENG';}else{$pageLang2=$_GET['ln'];}

$termsTable2=mysqli_query($link, "SELECT * FROM menu WHERE lang='$pageLang2'");
$menu=array();
while($oneTerm2=mysqli_fetch_assoc($termsTable2)){
	$menu[$oneTerm2['code']]=$oneTerm2['value'];
}
?>
<?php
require_once "connect.php";
$langTable3=mysqli_query($link,"SELECT DISTINCT lang FROM terms");
$langTest3=false;
while($oneLang3=mysqli_fetch_assoc($langTable3)){
	if($_GET['ln']==$oneLang3['lang']){$langTest3=true;} 
}
if($langTest3==false){$_GET['ln']='ENG';}
if(empty($_GET['ln'])){$pageLang3='ENG';}else{$pageLang3=$_GET['ln'];}

$termsTable3=mysqli_query($link, "SELECT * FROM terms WHERE lang='$pageLang3'");
$terms=array();
while($oneTerm3=mysqli_fetch_assoc($termsTable3)){
	$terms[$oneTerm3['code']]=$oneTerm3['value'];
}
?>
</section>