<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta name="author" content="Escritório Escola">
	<meta name="keywords" content="Escritório Escola">
	<meta name="robots" content="index">  	
	<meta name="description" content="14 semana transdisciplinar Pitágoras - FAMA">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" />
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
	<!-- Bootstrap -->
	<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css') ?>" >
	<link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap-theme.min.css') ?>" >
	<link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.min.css') ?>" >	
	<link rel="stylesheet" href="<?php echo base_url('assets/css/normalize.css') ?>" >	
	<link rel="stylesheet" href="<?php echo base_url('assets/css/style.css') ?>" >	
 	<script src="<?php echo base_url('assets/js/jquery.min.js') ?>"></script>
	<script src="<?php echo base_url('assets/js/bootstrap.min.js') ?>"></script>  
  <!-- material-cards -->
  <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,200,500,600,700' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="<?php echo base_url('assets/css/material-cards.css') ?>">
	<script type="text/javascript" src="<?php echo base_url('assets/js/jquery.material-cards.js') ?>"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/js/jquery.material-cards.min.js') ?>"></script>
	<title>iLAB - Sistema de Gerenciamento de Laboratórios</title>
</head>
<body>
	<header>
		<div class="container">
			<div class="logo"><a href="<?php echo base_url() ?>" title="iLAB"><img src="<?php echo base_url('assets/imgs/logoilab.svg') ?>" alt="iLAB"></a></div>
			<div class="title-fluid hidden-xs">
				<h1>Sistema de Gerenciamento de Laboratórios</h1>
			</div>
		</div>
		<input type="checkbox" id="control-nav" />
		<label for="control-nav" class="control-nav"></label>
		<label for="control-nav" class="control-nav-close"></label>
	<!-- menu -->
	<nav>
		<ul>
			<li><a class="menu-item" href="<?php echo base_url('Home') ?>">Início</a></li>
			<li><a class="menu-item" href="<?php echo base_url('Home/calendario') ?>">Calendário</a></li>
			<li><a class="menu-item" href="<?php echo base_url('Home/sobre') ?>">Sobre</a></li>
			<li><a class="menu-item" href="<?php echo base_url('Home/ajuda') ?>">Ajuda</a></li>
			<li><a class="menu-item" href="<?php echo base_url('Home/login') ?>">Login</a></li>
		</ul>
	</nav>
	</header>