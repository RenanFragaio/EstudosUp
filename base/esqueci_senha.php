<?php
	include"conexao.php";
    include"controle.php";

?>
<div class="container-fluid">
	<div class="row">
	<h3 class="page-header text-center">Recuperação de senha</h3>
		<div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset2 col-sm-10 col-sm-offset1 col-xs-10 col-xs-offset1">
			<form name="form" method="post" action="envio_senha.php">
			<div class="form-group">	
				<label>Digite o Email para a alteração de sua senha:</label>
				<input type="email" name="email1" class="form-control" required>
			</div>	
			
			<div class="form-group">	
				<label>Confirme o Email:</label>
				<input type="email" name="email2" class="form-control" required>
			</div>	
			
			<input type="submit" class="btn btn-primary" value="Confirmar">
			<input type="button" class="btn btn-default" value="Voltar" onclick="history.go(-1)">
			
			</form>
		</div>
	</div>
</div>
<?php
    include"rodape.php";

?>
