<?php
	include"../base/seguranca_adm.php";
?>
<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="modalLabel">Excluir Usuario</h4>
			</div>
			<div class="modal-body">
				Deseja realmente excluir este Usuario?
			</div>
			<div class="modal-footer">
				<a id="confirmaDelecao" class="btn btn-primary">Sim</a>
				<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
			</div>
		</div>
	</div>
</div>