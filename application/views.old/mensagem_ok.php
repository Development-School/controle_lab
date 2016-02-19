<?php $this->load->view('head');//Chama a view head.html?>
<?php if(!isset($erro)){$erro = false;}?>

	<title>Sistema Gerenciador de Laboratórios</title>
	
	<script type="text/javascript">
	/* Este codigo javascript redireciona a pagina para a home do site apos 3 segundos*/
	setTimeout(function(){
	  window.location.href = "<?php echo base_url($local)?>";
	},3000)
	</script>
</head>
<body>
<div class="container main">
<?php /* Chama a View da Barra de navegação*/
  switch ($_SESSION['tipo']) {
    case 1:
      $dados['ativo'] = 0; $this->load->view('admin1/navbar',$dados);
      break;
    case 2:
      $dados['ativo'] = 0; $this->load->view('admin2/navbar',$dados);
      break;
    case 3:
      $dados['ativo'] = 0; $this->load->view('admin3/navbar',$dados);
      break;          
  }?>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
		<?php if ($erro) { ?>
			<h1>
				<i class="fa fa-exclamation-triangle fa-lg pull-left"></i>
				<span class="label label-danger">&nbsp;&nbsp;<?php echo $mensagem; ?></span>
			</h1>			
		<?php }else { ?>
			<h1>
				<i class="fa fa-check fa-lg pull-left"></i>
				<span class="label label-success">&nbsp;&nbsp;<?php echo $mensagem; ?></span>
			</h1>			
		<?php } ?>
		</div>
	</div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>