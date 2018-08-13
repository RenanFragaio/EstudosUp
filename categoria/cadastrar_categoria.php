<?php 
include"../base/controle.php"; 
include"../base/seguranca.php";
?>
<div class="conteiner-fluid">
	<div class="row-fluid">
		<div class="col-lg-2"></div><!--espaço lateral-->
		<div class="col-lg-8 cor1">
			<form name="form" method="post" action="insert_categoria.php">
				<div class="page-header"><font size="5"><b>Cadastrar Categoria</b></font></div>
				
				<div class="form-group">
					<label for="categoria">Nome da categoria:</label>
					<input type="text" name="nome_categoria" class="form-control"/>
				</div>
				
				<button type="submit" class="btn btn-primary">Cadastrar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
				<a href="../categoria/lista_categoria.php" class="btn btn-default">Voltar</a>
			</form>
		</div>
		<div class="col-lg-2"></div><!--espaço lateral-->
	</div>
</div>
<?php /*include"../base/rodape.php";*/?>