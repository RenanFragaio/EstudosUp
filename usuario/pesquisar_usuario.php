<?php
	include"../base/seguranca_adm.php";
	include"../base/conexao.php";
	include"../base/controle.php"; 
	include"../artigo/modal.php";
	
	if(isset($_POST['busca'])){
	$busca = $_POST['busca'];
	
	$sql = "select * from usuario where nome like '%$busca%' or email like '%$busca%' or id_usuario like '%$busca%'";
	$executa = mysqli_query($conexao,$sql)or die(mysqli_error($conexao));
	
	$numero = mysqli_num_rows($executa);
	
	$resultado = "";
	?>
	<!-- Referenciando função - EXCLUIR -->
		<script src="../artigo/excluir.js"></script>

		<div class="container-fluid">
			<div class="row bg-branco pad-top">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pad">
					<font size="5" type="bold" >Lista de Usuários</font>
					<a href="../base/adm.php" class="btn btn-primary pull-right">
						<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span> Voltar
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pad">
					<div class="col-lg-12 col-md-12 col-sm-8 col-xs-12 col-centered">
						<form method="post" name="pesquisa" action="pesquisar_usuario.php">
							<div class="form-group">
								<div class="input-group">
									<input type="text" class="form-control" name="busca" placeholder="pesquisar usuario"/>
									<span class="input-group-btn">
										<button class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
									</span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 pad text-center">
					
					<a class="btn btn-success" href="../usuario/cadastrar_usuario.php">
						<!--<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>-->
						<font size="4" class="bold">Novo Usuario</font>
					</a>
					
				</div>
			</div>
			
	
	<?php	while($dados = mysqli_fetch_array($executa)){
		$resultado .="<tr>
						<td>".$dados['id_usuario']."</td>
						<td>".$dados['nome']."</td>
						<td>".$dados['email']."</td>
						<td>".$dados['senha']."</td>
						<td>".$dados['nivel']."</td>
						<td>
							<a href='../usuario/editar_usuario.php?id_usuario=".$dados['id_usuario']."'><button class='btn btn-warning'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button></a>
							<a href='../usuario/editar_senha.php?id_usuario=".$dados['id_usuario']."' title='Redefinir Senha'><button class='btn btn-info'><span class='glyphicon glyphicon-lock' aria-hidden='true'></span></button></a>
							<button onclick='deletaDado(".$dados['id_usuario'].")' data-toggle='modal' href='#delete-modal' class='btn btn-danger'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span></button>
						</td>
					</tr>";
		}
				echo"<div class='row bg-branco'>
					<div class='table-responsive'>
						<table class='table table-bordered bg-branco'>
							<tr bgcolor='#999999' class='titulo'>
								<td>Id</td>
								<td>Nome</td>
								<td>Email</td>
								<td>Senha</td>
								<td>Nivel</td>
								<td>Ações (Editar,Alterar Senha,Excluir)</td>
							</tr>
							".$resultado."
						</table>
					</div>
				</div>
				<a class='btn btn-primary' href='../usuario/lista_usuario.php'>Listar Todos</a>
			</div>";
	}
	else{
		echo"<script>alert('Página Não Encontrada. Redirecionando...');
		window.location='../usuario/lista_usuario.php';</script>";
	}
	include"../base/rodape.php";
?>
