<?php
	include"../base/seguranca_adm.php";
	include"../base/conexao.php";
	include"../base/controle.php"; 
	include"../artigo/modal.php";
	
	if(isset($_POST['busca'])){
	$busca = $_POST['busca'];
	
	$sql = "select * from artigo where titulo like '%$busca%' or nome_categoria like '%$busca%'";
	$executa = mysqli_query($conexao,$sql)or die(mysqli_error($conexao));
	
	$numero = mysqli_num_rows($executa);
	
	$resultado = "";
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
			
	
	<?php	while($dados = mysqli_fetch_array($executa)){
		$resultado .="<tr>
						<td>".$dados['id_artigo']."</td>
						<td>".$dados['titulo']."</td>
						<td>".$dados['nome_categoria']."</td>
						<td><img src='".$dados['imagem']."' class='mini'/></td>
						<td>".$dados['data_pub']."</td>
						<td>".$dados['visualizacoes']."</td>
						<td>
							<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."'><button class='btn btn-success'><span class='glyphicon glyphicon-eye-open' aria-hidden='true'></span></button></a>
							<a href='../artigo/editar_artigo.php?id_artigo=".$dados['id_artigo']."'><button class='btn btn-warning'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button></a>
							<button onclick='deletaDado(".$dados['id_artigo'].")' data-toggle='modal' href='#delete-modal' class='btn btn-danger'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></button>
						</td>
					</tr>";
		}
				echo"<div class='row bg-branco'>
					<div class='table-responsive'>
						<table class='table table-bordered bg-branco'>
							<tr bgcolor='#999999' class='titulo'>
								<td>Id</td>
								<td>Título</td>
								<td>Categoria</td>
								<td>Imagem</td>
								<td>Data da Publicação</td>
								<td>Visualizações</td>
								<td>Ações(Visualizar,Editar,Excluir)</td>
							</tr>
							".$resultado."
						</table>
					</div>
				</div>
				<a class='btn btn-primary' href='../artigo/lista_artigo.php'>Listar Todos</a>
			</div>";
	}
	else{
		echo"<script>alert('Página Não Encontrada. Redirecionando...');
		window.location='../artigo/lista_artigo.php';
		</script>";
	}
	include"../base/rodape.php";
?>
