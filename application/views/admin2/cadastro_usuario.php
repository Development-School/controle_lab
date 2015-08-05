<?php $this->load->view('head');//Chama a view head.html?>
  <title>Editar Cadastro de Usuario</title>  
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 6; $this->load->view('admin2/navbar',$dados);?>
  <div class="row">
  <div class="col-sm-12">    
    <?php 
    echo form_open('admin2/Usuario/receber','class="form-horizontal"'); 
    echo form_fieldset('Editar cadastro de Usuario');

    //Definição para o Bootstrap
    $attlabel = array('class' => 'col-sm-2 control-label',);
    $formgroup = '<div class="form-group">';
    $taminput = '<div class="col-sm-10">';
    $clss = 'class="form-control"';
    $fimdiv = '</div></div>';

    echo form_hidden('id', $usuario[0]['usuarioid']);

    //Campo de Nome
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "nome",
      "id" => "nome",
      "value" => $usuario[0]['nome'],
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
    //$options = array('' => '',); 
    foreach($usuario as $tipo) {
      $options = array($tipo['tipoid'] => $tipo['tipodesc'],);    
    }
    echo form_label('TIPO DE USUARIO','tipo',$attlabel);
    echo $taminput;
    echo form_dropdown('tipo',$options, $usuario[0]['tipoid'],$clss.' disabled');
    echo $fimdiv;

    //Campo de cpf
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "cpf",
      "id" => "cpf",
      "value" => $usuario[0]['cpf'],
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
      "value" => $usuario[0]['matricula'],
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
      "value" => $usuario[0]['email'],
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
      "value" => $usuario[0]['contato'],
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
      "value" => $usuario[0]['senha'],
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
      "value" => $usuario[0]['senha'],
      "class" => "form-control",
      "placeholder" => "Digite novamente a senha",
      "required" => ""             
    );
    echo form_label('CONFIRMAR','senha2',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    echo '<div class="form-group">';
    echo '<div class="col-sm-offset-2 col-sm-6">';
    //Imprime Mensagens de erro
    if (isset($erro)) {
      echo '<div class="alert alert-info alert-dismissible text-center" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button><i class="fa fa-exclamation-triangle fa-fw fa-lg"></i> '.$erro.'</div>';
    }
    echo validation_errors();
    echo $fimdiv;

    $atributosbtn = array(
        "type" => "submit",
        "name" => "btnSubmit",
        "value" => "Editar",
        "class" => "btn btn-info btn-lg col-xs-6 col-xs-offset-3 col-md-2 col-md-offset-2"
      );
    echo form_input($atributosbtn);;

    echo form_fieldset_close();
    echo form_close();
   ?>    
  </div>
  </div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>