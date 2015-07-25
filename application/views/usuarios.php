<?php $this->load->view('head');//Chama a view head.html?>

<title>Laboratórios</title>
  <link rel="stylesheet" href="<?php echo base_url('assets/css/estilo.css') ?>" >
  <style>  
  .pdf {height:800px; width:100%;}
  </style>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 5; $this->load->view('navbar',$dados);?>
  <div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
     <div class="panel panel-default">
      <div class="panel-heading">
        <h3>Lista de Usuarios</h3>
        <p>Aqui aparece todos os usuarios cadastrados no sistema</p>
      </div>
    <div class="panel-body">
    <?php if( $usuarios){ 
    echo '<div class="table-responsive">
    <table class="table table-hover">
      <tr class="active">
        <th>NOME</th>
        <th>TIPO</th> 
        <th>CPF</th>
        <th>MATRICULA</th> 
        <th>EMAIL</th>
        <th>CONTATO</th>
        <th></th>
        <th></th>
              
      </tr>';
      //Definição para o Bootstrap
      $attlabel = array('class' => 'col-sm-2 control-label',);
      $formgroup = '<div class="form-group">';
      $taminput = '<div class="col-sm-10">';
      $clss = 'class="form-control"';
      $fimdiv = '</div></div>';
      //opções do select de tipo
      $options = array('' => '',); 
      foreach($tipo as $tipo) {
        $options += array($tipo['tipoid'] => $tipo['tipodesc'],);    
      }        
      foreach($usuarios as $user) {
        echo "<tr>";
        echo '<td>'.$user['nome'].'</td>';
        echo '<td>'.$user['tipodesc'].'</td>';
        echo '<td>'.$user['cpf'].'</td>';
        echo '<td>'.$user['matricula'].'</td>';
        echo '<td>'.$user['email'].'</td>';
        echo '<td>'.$user['contato'].'</td>';
        echo '<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exibe'.$user['usuarioid'].'"><i class="fa fa-cog fa-fw fa-lg"></i>&nbsp;Editar</button>
              <!-- Modal -->
              <div class="modal fade" id="exibe'.$user['usuarioid'].'" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog modal-lg" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="myModalLabel">Atualizar Cadastro<br><small>Usuario: '.$user['nome'].'</small></h4>
                    </div>
                    <div class="modal-body">';
    echo form_open('Usuario/receber','class="form-horizontal"'); 
    echo form_fieldset('Cadastro de Usuario'); 

    echo form_hidden('id', $user['usuarioid']);

    //Campo de Nome
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "nome",
      "id" => "nome",
      "value" => $user['nome'],
      "class" => "form-control",
      "placeholder" => "Digite o nome do Usuario",
      "required" => ""             
    );
    echo form_label('NOME','nome',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de tipo
    echo $formgroup;    
    echo form_label('TIPO DE USUARIO','tipo',$attlabel);
    echo $taminput;
    echo form_dropdown('tipo',$options, $user['tipoid'], $clss);
    echo $fimdiv;

    //Campo de cpf
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "cpf",
      "id" => "cpf",
      "value" => $user['cpf'],
      "class" => "form-control",
      "placeholder" => "Digite o CPF",
      "required" => ""             
    );
    echo form_label('CPF','cpf',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de matricula
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "matricula",
      "id" => "matricula",
      "value" => $user['matricula'],
      "class" => "form-control",
      "placeholder" => "Digite a matricula",
      "required" => ""             
    );
    echo form_label('MATRICULA','matricula',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de email
    echo $formgroup;    
    $att = array(
      "type" => "email",
      "name" => "email",
      "id" => "email",
      "value" => $user['email'],
      "class" => "form-control",
      "placeholder" => "Digite o email",
      "required" => ""             
    );
    echo form_label('EMAIL','email',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de contato
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "contato",
      "id" => "contato",
      "value" => $user['contato'],
      "class" => "form-control",
      "placeholder" => "Digite o telefone do Usuario",
      "required" => ""             
    );
    echo form_label('CONTATO','contato',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de senha
    echo $formgroup;    
    $att = array(
      "type" => "password",
      "name" => "senha",
      "id" => "senha",
      "value" => $user['senha'],
      "class" => "form-control",
      "placeholder" => "Digite a senha do Usuario",
      "required" => ""             
    );
    echo form_label('SENHA','senha',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de senha2
    echo $formgroup;    
    $att = array(
      "type" => "password",
      "name" => "senha2",
      "id" => "senha2",
      "value" => $user['senha'],
      "class" => "form-control",
      "placeholder" => "Digite novamente a senha",
      "required" => ""             
    );
    echo form_label('CONFIRMAR','senha2',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;    

    $atributosbtn = array(
        "type" => "submit",
        "name" => "btnSubmit",
        "value" => "Atualizar",
        "class" => "btn btn-info btn-lg col-xs-6 col-xs-offset-3 col-md-2 col-md-offset-2"
      );
    echo form_input($atributosbtn);;

    echo form_fieldset_close();
    echo form_close();

                    echo '</div>
                    <div class="modal-footer">';                      
                      echo '<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                  </div>
                </div>
              </div>
              </td>';
        $atts = array(
                  'title' => 'Excluir',
                  'class' => 'pull-left btn btn-danger'
                );
        echo '<td>'.anchor('Usuario/apaga/'.$user['usuarioid'], '<i class="fa fa-trash-o fa-fw fa-lg"></i>&nbsp;Excluir', $atts).'</td>';             
      }
    echo "</table>";
    }else{
        echo "<center><h4><span class='label label-danger'>Nenhum Reserva foi feita ainda!</span></h4></center>"; 
        }?>
  </div>
      </div>
      </div>
    </div>
  </div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>