<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Escritório Escola">
	<meta name="keywords" content="Escritório Escola">
	<meta name="robots" content="index">  	
	<meta name="description" content="14 semana transdisciplinar Pitágoras - FAMA">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" />
	<!-- Links dos icones do site -->
	<link rel="icon" type="image/png" href="<?php echo base_url('assets/imgs/logo.png') ?>" sizes="16x16">
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