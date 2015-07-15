<?= $this->load->view('head');//Chama a view head.html?>

	<title>Sistema Gerenciador de Laboratórios</title>

</head>
<body>
<div class="container main">
	<?php /* Chama a View da Barra de navegação*/
	$dados['ativo'] = 1; $this->load->view('navbar',$dados);?>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="panel panel-info">
			<div class="panel-heading">
				<h3>Minhas Aulas Reservadas</h3>
        <p>Aqui aparece as aulas que vc reservou nos laboratorios</p>
			</div>
		<div class="panel-body">
    <div class="table-responsive">
		<table class="table table-hover">
      <tr class="active">
        <th>LABORATORIO</th>
        <th>DISCIPLINA</th> 
        <th>TURNO</th>
        <th>DIA</th> 
        <th>EXIBIR</th>
        <th>ALTERAR</th>
        <th>EXCLUIR</th>        
      </tr>  
      <?php  
      foreach($reservado as $reserva) {
        echo "<tr>";
        echo '<td>'.$reserva['labnome'].'</td>';
        echo '<td>'.$reserva['disciplinadesc'].'</td>';
        echo '<td>'.$reserva['turnodesc'].'</td>';
        echo '<td>'.date("d/m/Y", strtotime($reserva['data_aula'])).'</td>';
        echo '<td><button class="btn btn-default">teste</button></td>
              <td><button class="btn btn-default">teste</button></td>
              <td><button class="btn btn-default">teste</button></td>
              </tr>';
      }?>
    </table>
  </div>
			</div>
			</div>
		</div>
	</div>
</div>
<?= $this->load->view('footer');//Chama a view footer?>