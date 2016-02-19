<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
|  Configurações da Library Layout
| -------------------------------------------------------------------
*/
// $config['getByModel'] = array('InfoSite_model', 'info');
$config['template']   = 'layouts/default.html';
$config['header']     = 'layouts/header2.html';
$config['footer']     = 'layouts/footer.html';
$config['extencao']   = '.html';
$config['minificar']  = TRUE;

/*
| -------------------------------------------------------------------
|  Configurações Personalizadas das views
| -------------------------------------------------------------------
*/
$config['titulo'] = 'Sistema Gerenciador de Laboratórios';
// $config['css'] = '<link href="'.base_url('css/estilo.min.css').'" rel="stylesheet" type="text/css" media="all" />';
// $config['js'] = '<script async defer src="'.base_url('js/cmaisd.min.js').'"></script>';

/* End of file template.php */
/* Location: ./application/config/template.php */