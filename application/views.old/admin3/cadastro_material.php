<?php $this->load->view('head');//Chama a view head.html?>
  <title><?php echo $titulo; ?></title>  
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 4; $this->load->view('admin3/navbar',$dados);?>
  <div class="row">
  <div class="col-sm-12">    
    <?php 
    echo form_open('admin3/Material/receber','class="form-horizontal"'); 
    echo form_fieldset($titulo);

    //Definição para o Bootstrap
    $attlabel = array('class' => 'col-sm-2 control-label',);
    $formgroup = '<div class="form-group">';
    $taminput = '<div class="col-sm-10">';
    $clss = 'class="form-control"';
    $fimdiv = '</div></div>';

    if(isset($id_oculto)){
      echo $id_oculto;
    }

    //var_dump($laboratorio);

    //Campo de nome do material
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "nome",
      "id" => "nome",      
      "class" => "form-control",
      "placeholder" => "Digite o nome do Material",
      "required" => ""             
    );
    if(isset($material)){
      $att += array("value" => $material[0]['materialnome'], );   
    }else {
      $att += array("value" => set_value('nome'), );
    }
    echo form_label('NOME','nome',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de Quantidade
    echo $formgroup;    
    $att = array(
      "type" => "number",
      "name" => "quantidade",
      "id" => "quantidade",
      "class" => "form-control",
      "placeholder" => "Digite o quantidade do Laboratorio",
      "required" => ""             
    );
    if(isset($material)){
      $att += array("value" => $material[0]['quantidade'], );   
    }else {
      $att += array("value" => set_value('quantidade'), );
    }
    echo form_label('QUANTIDADE','quantidade',$attlabel);
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
        "value" => $titulobtn,
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