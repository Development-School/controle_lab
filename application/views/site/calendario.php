<?php $this->load->view('site/menu'); ?>
<section class="calendario container main">
<h1 class="appearance">Calendário de Aulas</h1>
<div class="panel panel-default">
  <div class="panel-body">
	<div class="table-responsive">
    <?php echo $calendario;?>
  </div>
  </div>
</div>
	<!-- Event Modal -->
	<div id="myModal" class="modal fade">
	  <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">Carregando...</h4>
        </div>
        <div class="modal-body">
          <div class="progress">
					  <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
					    <span class="sr-only">Carregando...</span>
					  </div>
					</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
        </div>
      </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- Event modal -->
</section>

<script type="text/javascript">
	$('#myModal').on('hidden.bs.modal', function () {
  	$(this).removeData('bs.modal');
	});
</script>

<?php $this->load->view('site/footer'); ?>