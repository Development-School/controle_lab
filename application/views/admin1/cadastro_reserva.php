<?php $this->load->view('head');//Chama a view head.html?>
  <title>Reserva de Laboratórios</title>
  <script>
  $(function(){     
     $("select[name=curso]").change(function(){ 
        curso = $(this).val();         
        if ( curso === '')
            return false;         
        resetaCombo('disciplina');             
        $.getJSON( '<?php echo site_url("admin1/Reserva_lab/getDisciplina") ?>/' + curso, function (data){ 
            var option = new Array(); 
            $.each(data, function(i, obj){ 
                option[i] = document.createElement('option');
                $( option[i] ).attr( {value : obj.disciplinaid} );
                $( option[i] ).append( obj.disciplinadesc ); 
                $("select[name='disciplina']").append( option[i] );         
            });
     
        });     
    }); 
	}); 
	function resetaCombo( el ) {
	   $("select[name='"+el+"']").empty();
	   var option = document.createElement('option');                                  
	   $( option ).attr( {value : ''} );
	   $( option ).append( 'Escolha a Disciplina' );
	   $("select[name='"+el+"']").append( option );
	}
  </script>
</head>
<body>
  <div class="container main">
  <?php /* Chama a View da Barra de navegação*/
  $dados['ativo'] = 3; $this->load->view('admin1/navbar',$dados);?>
  <div class="row">
  <div class="col-sm-12">    
    <?php 
    echo form_open('admin1/Reserva_lab/receber','class="form-horizontal"'); 
    echo form_fieldset('Reserva de Laboratorio');

    //Definição para o Bootstrap
    $attlabel = array('class' => 'col-sm-2 control-label',);
    $formgroup = '<div class="form-group">';
    $taminput = '<div class="col-sm-10">';
    $clss = 'class="form-control"';
    $fimdiv = '</div></div>';

    //Campo de Nome
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "nome",
      "id" => "disabledTextInput",
      "value" => $this->session->userdata('nome'),
      "class" => "form-control",
      "disabled" => ""             
    );
    echo form_label('NOME','disabledTextInput',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo $fimdiv;

    //Campo de Unidade
    echo $formgroup;
    $options = array('' => 'Escolha a Unidade',); 
    foreach($unidade as $unidade) {
      $options += array($unidade['unidadeid'] => $unidade['unidadedesc'],);    
    }
    echo form_label('UNIDADE','unidade',$attlabel);
    echo $taminput;
    echo form_dropdown('unidade',$options,'',$clss);
    echo form_error('unidade');  
    echo $fimdiv;

    //Campo de Curso
    echo $formgroup;
    $options = array('' => 'Escolha o Curso',); 
    foreach($curso as $curso) {
      $options += array($curso['cursoid'] => $curso['cursodesc'],);    
    }
    echo form_label('CURSO','curso',$attlabel);
    echo $taminput; 
    echo form_dropdown('curso',$options,'',$clss);
    echo form_error('curso');  
    echo $fimdiv;

    //Campo das Disciplinas
    echo $formgroup;
    $options = array('' => 'Escolha a Disciplina',);   
    //foreach($disciplina as $disciplina) {
    //  $options += array($disciplina['disciplinaid'] => $disciplina['disciplinadesc'],);    
    //}
    echo form_label('DISCIPLINA','disciplina',$attlabel);
    echo $taminput;
    echo form_dropdown('disciplina',$options,'',$clss);
    echo form_error('disciplina');  
    echo $fimdiv;

    //Campo dos Periodos
    echo $formgroup;
    $options = array('' => 'Escolha o periodo',);
    foreach($periodo as $periodo) {
      $options += array($periodo['periodoid'] => $periodo['periododesc'],);    
    }
    echo form_label('PERIODO','periodo',$attlabel);
    echo $taminput;
    echo form_dropdown('periodo',$options,'',$clss);
    echo form_error('periodo');  
    echo $fimdiv;

    //Campo de Data
    echo $formgroup;
    $atr_dataaula = array(
      "type" => "date",
      "name" => "dataaula",
      "id" => "dataaula",
      "value" => set_value('dataaula'),
      "class" => "form-control",
      "placeholder" => "Digite a data da Aula"
    ); 
    echo form_label('DATA','dataaula',$attlabel);
    echo $taminput;    
    echo form_input($atr_dataaula);
    echo form_error('dataaula');  
    echo $fimdiv;

    //Campo de Turno
    echo $formgroup;    
    $options = array('' => 'Escolha o Turno',);
    foreach($turno as $turno) {
      $options += array($turno['turnoid']  => $turno['turnodesc'],);    
    }
    echo form_label('TURNO', 'turno',$attlabel);
    echo $taminput; 
    echo form_dropdown('turno', $options,'',$clss);
    echo form_error('turno');  
    echo $fimdiv;

    //Campo dos Labs
    echo $formgroup;
    $options = array('' => 'Escolha o Laboratório',);
    foreach($lab as $lab) {
      $options += array($lab['labid']  => $lab['labnome'],);    
    }
    echo form_label('LABORATÓRIO','laboratorio',$attlabel);
    echo $taminput;
    echo form_dropdown('laboratorio',$options,'',$clss);
    echo form_error('laboratorio');  
    echo $fimdiv;

    //Campo de titulo
    echo $formgroup;    
    $att = array(
      "type" => "text",
      "name" => "titulo",
      "id" => "titulo",
      "value" => set_value('titulo'),
      "class" => "form-control",
      "placeholder" => "Digite o Tema da Aula"
    );
    echo form_label('TITULO DA AULA','titulo',$attlabel);
    echo $taminput;
    echo form_input($att);
    echo form_error('titulo');
    echo $fimdiv;

    //Campo Descrição
    echo $formgroup;
    $atr_text = array(              
      "name" => "descricao",
      "id" => "descricao",
      "value" => set_value('descricao'),
      "class" => "form-control",                  
      "rows" => "5",
      "placeholder" => "Digite uma descrição para a Aula"
    );                 
    echo form_label('DESCRIÇÃO','descricao',$attlabel);
    echo $taminput;
    echo form_textarea($atr_text);
    echo form_error('descricao');  
    echo $fimdiv;

    /*echo '<div class="form-group">';
    echo '<div class="col-sm-offset-2 col-sm-6">';
    echo validation_errors();
    echo $fimdiv;*/

    $atributosbtn = array(
        "type" => "submit",
        "name" => "btnSubmit",
        "value" => "Cadastrar",
        "class" => "btn btn-info btn-lg col-xs-6 col-xs-offset-3 col-md-2 col-md-offset-2"
      );
    echo form_input($atributosbtn);

    echo form_fieldset_close();
    echo form_close();
   ?>    
  </div>
  </div>
</div>
<?php $this->load->view('footer');//Chama a view footer?>