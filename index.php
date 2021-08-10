<?php 
  ob_start();
  session_start(); 
?>
<!DOCTYPE html>
<html>
<head>
  <title>AT SHOP</title>
    <link href="webroot/font/Font Awesome/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="webroot/bootstrap4/css/bootstrap.css">
    <link rel="stylesheet" href="webroot/web.css">
    <link rel="stylesheet" href="webroot/font/FontAwesome/css/all.css">
    <script src="webroot/jquery/jquery.js"></script>
    <script src="webroot/bootstrap4/js/bootstrap.js"></script>
    
   <!-- tuyết rơi     <script type="text/javascript" src="webroot/tuyetroi.js"></script>  tuyết rơi   --> 
   <script src="https://kit.fontawesome.com/32fb8035bc.js" crossorigin="anonymous"></script>
  
</head>

<body >

   
    <?php
          include_once 'config/database.php';
          include_once('view/element/header.php');
          include_once('controller/view-controller.php');
          include_once('view/element/footer.php');

	?>


</body>
</html>