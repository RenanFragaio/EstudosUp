<?php 
	include"../base/seguranca_adm.php";
	include"../base/conexao.php";
	include"../base/controle.php"; 
	include"../artigo/modal.php";
	
	
	$sql = "select * from artigo";
	$seleciona = mysqli_query($conexao,$sql);
?>
<!-- Referenciando função - EXCLUIR -->
<script src="../artigo/excluir.js"></script>

<div class="container-fluid">
	<div class="row bg-branco pad-top">
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pad">
			<font size="5" type="bold" >Lista de Artigos</font>
			<a href="../base/adm.php" class="btn btn-primary pull-right">
				<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Voltar
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pad">
			<div class="col-lg-12 col-md-12 col-sm-8 col-xs-12 col-centered">
				<form method="post" name="pesquisa" action="pesquisar_artigo.php">
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control" name="busca" placeholder="pesquisar artigo"/>
							<span class="input-group-btn">
								<button class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
							</span>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 pad text-center">
			
			<a class="btn btn-success" href="../artigo/cadastrar_artigo.php">
				<font size="4" class="bold">Novo Artigo</font>
			</a>
			
		</div>
	</div>
	<div class="row bg-branco">
		<div class='table-responsive'>
			<table class="table table-bordered bg-branco">
				<tr bgcolor="#999999" class="titulo">
					<td>Id</td>
					<td>Título</td>
					<td>Categoria</td>
					<td>Imagem</td>
					<td>Imagem Vísivel</td>
					<td>Data da Publicação</td>
					<td>Visualizações</td>
					
					<td>Ações(Visualizar,Editar,Excluir)</td>
				</tr>
				<?php while($dados = mysqli_fetch_array($seleciona)){ ?>
				<tr>
					<td><?php echo $dados['id_artigo']; ?></td>
					<td><?php echo $dados['titulo']; ?></td>
					<td><?php echo $dados['nome_categoria']; ?></td>
					<td><img class="mini" src="<?php echo $dados['imagem']; ?>"></td>
					<td><?php echo $dados['visivel']; ?></td>
					<td><?php echo date('d/m/Y - H:i', strtotime($dados['data_pub']));?></td>
					<td><?php echo $dados['visualizacoes']; ?></td>
					<td>
						
						<a href="../artigo/view_artigo.php?id_artigo=<?php echo $dados['id_artigo']; ?>"><button class="btn btn-success"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></button></a>
						<a href="../artigo/editar_artigo.php?id_artigo=<?php echo $dados['id_artigo']; ?>"><button class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button></a>
						<button onclick="deletaDado('<?php echo $dados['id_artigo'];?>')" data-toggle='modal' href='#delete-modal' class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
					</td>
				</tr>
				<?php
				}
				?>
			</table>
		</div>
	</div>
	
</div>
<?php include"../base/rodape.php"; ?>