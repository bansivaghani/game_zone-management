<?php 
session_start();
$_SESSION['alert']=1;
$url=$_GET['url'];

$_SESSION['alert_title']="Successfully";



echo "<script>window.location='".$url."'</script>";
 ?>