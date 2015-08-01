<?php $this->load->view('head');//Chama a view head.html?>
  <title><?php echo $titulo; ?></title>  
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 10; $this->load->view('admin1/navbar',$dados);?>
  <div class="row">
  <div class="col-sm-12">    
    <?php 
    echo form_open('admin1/Cursos/receber','class="form-horizontal"'); 
    echo form_fieldset($titulo);

    //Definição para o Bootstrap
    $attlabel = array('class' => 'col-sm-2 control-label');
    $formgroup = '<div class="form-group">';
    $taminput = '<div class="col-sm-10">';
    $clss = 'class="form-control"';
    $fimdiv = '</div></div>';

    if(isset($id_oculto)){
      echo $id_oculto;
    }

    //var_dump($laboratorio);

    //Campo de nome do curso
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "nome",
      "id" => "nome",      
      "class" => "form-control",
      "placeholder" => "Digite o nome do Curso",
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

    //Campo de periodo
    /*if(isset($laboratorio)){
      $tipolab = $laboratorio[0]['tipolabid'];   
    }else {*/
      $tipolab = '';
    //}
    echo $formgroup;
    $options = array('' => 'Digite a quantidade de periodos',); 
    foreach($periodo as $periodo) {
      $options += array($periodo['periodoid'] => $periodo['periododesc'],);    
    }
    echo form_label('PERIODOS DO CURSO','periodo',$attlabel);
    echo $taminput;
    echo form_dropdown('periodo',$options, $tipolab ,$clss);
    echo $fimdiv;    

    //Campo de disciplina
    /*if(isset($laboratorio)){
      $tipound = $laboratorio[0]['unidadeid'];   
    }else {*/
      $tipound = '';
    /*}*/
    echo $formgroup;
    $options = array(); 
    foreach($disci as $disci) {
      $options += array($disci['disciplinaid'] => $disci['disciplinadesc'],);    
    }
    echo form_label('DISCIPLINA','disciplina',$attlabel);
    echo $taminput;
    echo form_dropdown('disciplina[]',$options, $tipound ,$clss.'multiple="multiple"');
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
<script type="text/javascript">
  var demo = $('select[name="disciplina[]"]').bootstrapDualListbox({
  nonSelectedListLabel: 'Não Selecionados',
  selectedListLabel: 'Selecionados',
  preserveSelectionOnMove: 'moved',
  infoText: 'Mostrando todos {0}',
  infoTextEmpty: 'Lista Vazia',
  filterPlaceHolder: 'Filtro',
  filterTextClear: 'Mostrar tudo',
  infoTextFiltered: '<span class="label label-warning">Filtrado</span>  {0} de {1}',
  moveOnSelect: false 
});
</script>
<?php $this->load->view('footer');//Chama a view footer?>