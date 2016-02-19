<div class="container main">
    <div class="row">      
      <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
        <div class="form-group">              
          <?php   
          echo form_open('Login/logar','class="form-horizontal"'); 
          echo form_fieldset('Efetuar Login');
          ?>
          <div class="form-group">
          <?php
           $attlabel = array(
              'class' => 'col-sm-3 control-label',              
            );
            echo form_label('CPF', 'cpf', $attlabel);
            ?>
            <div class="col-sm-9">
              <div class="input-group">              
              <?php
              $atributos = array(
                  "type" => "text",
                  "name" => "cpf",
                  "id" => "cpf",
                  "value" => set_value('cpf'),
                  "class" => "form-control",
                  "placeholder" => "Digite seu CPF"
                );           
              echo form_input($atributos);
              ?><span class="input-group-addon"><i class="fa fa-user"></i></span>
              </div>
            <?php echo form_error('cpf'); ?>
            </div>
            </div>

            <div class="form-group">
            <?php            
            echo form_label('SENHA', 'senha', $attlabel);
            ?>
            <div class="col-sm-9">
              <div class="input-group"> 
              <?php 
              $atributos = array(
                  "type" => "password",
                  "name" => "senha",
                  "id" => "senha",
                  "value" => set_value('senha'),
                  "class" => "form-control",
                  "placeholder" => "Digite sua senha"
                );                  
              echo form_password($atributos);
            ?><span class="input-group-addon"><i class="fa fa-key"></i></span>
            </div>
            <?php echo form_error('senha'); ?>
            </div>
            </div>
            <?php
            //Imprime Mensagens de erro
            if (isset($erro)) {
              echo '<div class="alert alert-info alert-dismissible text-center" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button><i class="fa fa-exclamation-triangle fa-fw fa-lg"></i> '.$erro.'</div>';
            }            
            //echo validation_errors();
            $atributos3 = array(
                "type" => "submit",
                "name" => "btnSubmit",
                "value" => "ENTRAR",
                "class" => "btn btn-success btn-lg col-md-6 col-md-offset-3 col-xs-6 col-xs-offset-3"
              );
            echo form_input($atributos3);            
            echo form_fieldset_close();     
          echo form_close();  
          ?>
        </div>
      </div>
      <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
        <a class="btn col-sm-4" href="<?php echo base_url('');?>">Cadastre-se Aqui! </a>      
        <a class="btn col-sm-4" href="<?php echo base_url('');?>">Esqueceu sua senha?</a>
        <a class="btn col-sm-4" href="<?php echo base_url('Home/ajuda');?>">Ajuda</a>
      </div>
    </div>
</div>