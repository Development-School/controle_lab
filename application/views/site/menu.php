<!DOCTYPE html>
<html>
<head lang ="pt-br">
	<meta charset="utf-8">  
	<meta name="author" content="Escritório Escola">
	<meta name="keywords" content="Escritório Escola">
	<meta name="robots" content="index">  	
	<meta name="description" content="14 semana transdisciplinar Pitágoras - FAMA">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Links dos icones do site -->
	<link rel="apple-touch-icon" sizes="57x57" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-57x57.png') ?>">
	<link rel="apple-touch-icon" sizes="60x60" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-60x60.png') ?>">
	<link rel="apple-touch-icon" sizes="72x72" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-72x72.png') ?>">
	<link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-76x76.png') ?>">
	<link rel="apple-touch-icon" sizes="114x114" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-114x114.png') ?>">
	<link rel="apple-touch-icon" sizes="120x120" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-120x120.png') ?>">
	<link rel="apple-touch-icon" sizes="144x144" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-144x144.png') ?>">
	<link rel="apple-touch-icon" sizes="152x152" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-152x152.png') ?>">
	<link rel="apple-touch-icon" sizes="180x180" href="<?php echo base_url('assets/imgs/favicons/apple-touch-icon-180x180.png') ?>">
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/imgs/favicons/favicon-32x32.png') ?>" sizes="32x32">
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/imgs/favicons/favicon-194x194.png') ?>" sizes="194x194">
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/imgs/favicons/favicon-96x96.png') ?>" sizes="96x96">
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/imgs/favicons/android-chrome-192x192.png') ?>" sizes="192x192">
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/imgs/favicons/favicon-16x16.png') ?>" sizes="16x16">
	<link rel="manifest" href="<?php echo base_url('assets/imgs/favicons/manifest.json') ?>">
	<meta name="msapplication-TileColor" content="#da532c">
	<meta name="msapplication-TileImage" content="<?php echo base_url('assets/imgs/favicons/mstile-144x144.png') ?>">
	<meta name="theme-color" content="#ffffff">

	<title>iLab2 - Sistema de Gerenciamento de Laboratórios</title>

	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto:100' rel='stylesheet' type='text/css'>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" >
	<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-theme.min.css') ?>" >
	<link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.min.css') ?>" >	
 	<script src="<?php echo base_url('assets/js/jquery.min.js') ?>"></script>
	<script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>
	<link rel="stylesheet" href="<?php echo base_url('assets/css/style.css') ?>" >

	<script type="text/javascript">
		// Use jQuery com a variavel $j(...)
		var $j = jQuery.noConflict();
		$j(document).ready(function() {
			$j(".voltarTopo").hide();
			$j(function () {
				$j(window).scroll(function () {
					if ($j(this).scrollTop() > 300) {
						$j('.voltarTopo').fadeIn();
					} else {
						$j('.voltarTopo').fadeOut();
					}
				});
				$j('.voltarTopo').click(function() {
					$j('body,html').animate({scrollTop:0},600);
				}); 
			});
		});
	</script>
</head>
<body id="voltarTopo">

	<!--  selo pitagoras-->
	<div class="selo-pitagoras hidden-phone">
		<img src="<?php echo base_url('assets/imgs/selo-pitagoras.svg') ?>" alt="">
	</div>
	<!-- fim selo -->

	<div class="container">
		<!-- <img style="float: left;" src="../img/ilabicon.00_jpg_srb" >
		<h1 style="text-align: center; font-size: 24px; letter-spacing:0.4em; font-weight: bold;">
			SISTEMA DE GERENCIAMENTO DE<br>LABORATÓRIOS
		</h1> -->

		<div class= "row-fluid">
			<div class= "box-top">
				<div class="logo-img"><a href="#"><img src="<?php echo base_url('assets/imgs/logo.jpg') ?>" alt=""></a></div>
				<div class="box-title hidden-phone"><h1 class="title"><p>Sistema de gerenciamento de</p> <p>laboratórios</p></h1></div>
			</div>
		</div>

		<!-- menu -->
		<header>
			<input type="checkbox" id="control-nav" />
			<label for="control-nav" class="control-nav"></label>
			<label for="control-nav" class="control-nav-close"></label>
			
			
				<nav class="nav-menu">
					<ul class="menu">
						<li><a class="menu-item active" href="<?php echo base_url('Home')?>">Início</a></li>
						<li><a class="menu-item active" href="<?php echo base_url('Home/calendario')?>">Calendário</a></li>
						<li><a class="menu-item" href="<?php echo base_url('Home/sobre')?>" >Sobre</a></li>
						<li><a class="menu-item" href="<?php echo base_url('Home/ajuda')?>">Ajuda</a></li>
						<li><a class="menu-item-login btn btn-success" href="<?php echo base_url('Login')?>">Login</a></li>
					</ul>
				</nav>
		</header>
	</div>