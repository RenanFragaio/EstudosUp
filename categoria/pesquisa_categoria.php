<?php
	include"../base/seguranca_adm.php";
	include"../base/conexao.php";
	include"../base/controle.php"; 
	include"../artigo/modal.php";
	
	if(isset($_POST['busca'])){
	$busca = $_POST['busca'];
	
	$sql = "select * from categoria where nome_categoria like '%$busca%'";
	$executa = mysqli_query($conexao,$sql)or die(mysqli_error($conexao));
	
	$numero = mysqli_num_rows($executa);
	
	$resultado = "";
	?>
	<!-- Referenciando função - EXCLUIR -->
		<script src="../artigo/excluir.js"></script>

		<div class="container-fluid">
	<div class="row bg-branco pad-top">
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pad">
			<font size="5" type="bold">Categorias</font>
			<a href="../base/adm.php" class="btn btn-primary pull-right">
				<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Voltar
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pad">
			<div class="col-lg-12 col-md-12 col-sm-8 col-xs-12 col-centered">
			<form method="post" action="../categoria/pesquisa_categoria.php">
				<div class="input-group">
					<input type="text" class="form-control" name="busca" placeholder="pesquisar categoria"/>
						<span class="input-group-btn">
							<button class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
						</span>
				</div>
			</form>
			</div>
		</div>
		<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 pad">
			
			<center><a class="btn btn-success" href="../categoria/cadastrar_categoria.php">
			
				<font size="4" class="bold">Nova Categoria</font>
			</a></center>
			
		</div>
	</div>
	<div class="row bg-branco">
		<div class='rable-responsive'>
			<table class="table table-bordered bg-branco">
				<tr bgcolor="#999999">
					<td>Nome da Categoria</td>
					<td>Ações</td>
				</tr>
				<?php while($dados = mysqli_fetch_array($executa)){ ?>
				<tr>
					<td><?php echo $dados['nome_categoria']; ?></td>
					<td>						
						<a href="../categoria/excluir_categoria.php?nome_categoria=<?php echo $dados['nome_categoria']; ?>"><button class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button></a>
					</td>
				</tr>
				<?php
				}
				?>
			</table>
		</div>
	</div>
	<a class='btn btn-primary' href='../categoria/lista_categoria.php'>Listar Todos</a>
</div>
<?php
}
else{
	echo"<script>alert('Página Não Encontrada. Redirecionando...');
		window.location='../categoria/lista_categoria.php';</script>";
} 

include"../base/rodape.php"; ?>