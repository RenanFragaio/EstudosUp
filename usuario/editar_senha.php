<?php
	include"../base/seguranca_adm.php";
	include"../base/conexao.php";
	include"../base/controle.php";
	
	if(isset($_GET['id_usuario'])){
	$id_usuario = $_GET['id_usuario'];
	
	$sql = "select senha from usuario where id_usuario=$id_usuario";
	$seleciona = mysqli_query($conexao,$sql);
	
	$dados = mysqli_fetch_array($seleciona);
?>
<div class="container-fluid">
	
	<form name="editar_senha" method="post" action="../usuario/update_senha.php">
	<!-- area de campos do form-->

	<div class="row bg-branco">
		
		<h3 class="page-header text-center">Alterar Senha do Usuário</h3>

		<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-0 col-xs-12">
			<div class="form-group">
					<label for="nome">Digite a Senha Atual:</label>
					<input type="password" class="form-control" name="senha_antiga" maxlength="60" required>
			</div>
			<div class="form-group">
					<label for="email">Digite uma Nova Senha:</label>
					<input type="password" class="form-control" name="senha1" maxlength="60" required>
			</div>
			<div class="form-group">
					<label for="email">Confirme Nova Senha:</label>
					<input type="password" class="form-control" name="senha2" maxlength="60" required>
			</div>
			
			<input type="hidden" name="id_usuario" value="<?php echo $id_usuario;?>">
			
			<div class="form-group">
				<a href="../usuario/lista_usuario.php" class="btn btn-default">Voltar</a> | <button type="submit" class="btn btn-primary">Atualizar</a>
			</div>
		</div>
		</form>		
	</div>
	
</div>
<?php 

} 
else{
	echo"<script>
            alert('Área restrita a usuários administradores. Retornando à Página de Login.');
            window.location = '../base/pagina_login.php';
        </script>";
}
?>
<?php include"../base/rodape.php"; ?>