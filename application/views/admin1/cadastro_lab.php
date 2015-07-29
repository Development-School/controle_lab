<?php $this->load->view('head');//Chama a view head.html?>
  <title><?php echo $titulo; ?></title>  
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 8; $this->load->view('admin1/navbar',$dados);?>
  <div class="row">
  <div class="col-sm-12">    
    <?php 
    echo form_open('admin1/Labs/receber','class="form-horizontal"'); 
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

    //Campo de Lab nome
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "nome",
      "id" => "nome",      
      "class" => "form-control",
      "placeholder" => "Digite o nome do Laboratorio",
      "required" => ""             
    );
    if(isset($laboratorio)){
      $att += array("value" => $laboratorio[0]['labnome'], );   
    }else {
      $att += array("value" => set_value('nome'), );
    }
    echo form_label('NOME','nome',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de Unidade
    if(isset($laboratorio)){
      $tipound = $laboratorio[0]['unidadeid'];   
    }else {
      $tipound = '';
    }
    echo $formgroup;
    $options = array('' => '',); 
    foreach($unidade as $unidade) {
      $options += array($unidade['unidadeid'] => $unidade['unidadedesc'],);    
    }
    echo form_label('UNIDADE','unidade',$attlabel);
    echo $taminput;
    echo form_dropdown('unidade',$options, $tipound ,$clss);
    echo $fimdiv;

    //Campo de tipo
    if(isset($laboratorio)){
      $tipolab = $laboratorio[0]['tipolabid'];   
    }else {
      $tipolab = '';
    }
    echo $formgroup;
    $options = array('' => '',); 
    foreach($tipo as $tipo) {
      $options += array($tipo['tipolabid'] => $tipo['descricao'],);    
    }
    echo form_label('TIPO DE LABORATORIO','tipo',$attlabel);
    echo $taminput;
    echo form_dropdown('tipo',$options, $tipolab ,$clss);
    echo $fimdiv;
    
    //Campo de Capacidade
    echo $formgroup;    
    $att = array(
      "type" => "number",
      "name" => "capacidade",
      "id" => "capacidade",
      "class" => "form-control",
      "placeholder" => "Digite o capacidade do Laboratorio",
      "required" => ""             
    );
    if(isset($laboratorio)){
      $att += array("value" => $laboratorio[0]['capacidade'], );   
    }else {
      $att += array("value" => set_value('capacidade'), );
    }
    echo form_label('CAPACIDADE','capacidade',$attlabel);
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