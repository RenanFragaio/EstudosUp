<?php
	include"../base/seguranca_adm.php";
	include"../base/conexao.php";
	include"../base/controle.php";
	
	if(isset($_GET['id_usuario'])){
	$id_usuario = $_GET['id_usuario'];
	
	$sql = "select nome,email,nivel,foto from usuario where id_usuario=$id_usuario";
	$seleciona = mysqli_query($conexao,$sql);
	
	$dados = mysqli_fetch_array($seleciona);

?>
<div class="container-fluid">
	
	<form name="editar" method="post" action="../usuario/update_usuario.php" enctype="multipart/form-data">
	<!-- area de campos do form-->
	
	<div class="row bg-branco">
		
		<h3 class="page-header text-center">Editar dados do usuário</h3>
		
		<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-0 col-xs-12">
			<div class="form-group">
					<label for="nome">Nome:</label>
					<input type="text" class="form-control" name="nome" maxlength="30" value="<?php echo $dados['nome']?>" required>
			</div>
			<div class="form-group">
					<label for="email">Email:</label>
					<input type="email" class="form-control" name="email" maxlength="80" value="<?php echo $dados['email']?>" required>
			</div>
			<?php 	
			
			if($dados['nivel']=='adm'){
						echo"<div class='form-group'>
							<label for='foto'>Foto:</label>
							<input type='file' class='form-control' name='foto'><br>
						</div>
						<input type='hidden' name='nivel' value='".$dados['nivel']."'>"; 
					}
			?>
			
			<!-- sem este ID não é possivel verificar se o email ja existe, ou se existe em outro usuario. -->
			<input type="hidden" name="id_usuario" value="<?php echo $id_usuario;?>">
			
			<div class="form-group">
				<a href="../usuario/lista_usuario.php" class="btn btn-default">Voltar</a> | <button type="submit" class="btn btn-primary">Atualizar</a>
			</div>
		</div>
		</form>
	</div>
	
</div>
<?php 
} /*fechando o if */ 

else{
	echo"<script>
            alert('Área restrita a usuários administradores. Retornando à Página de Login.');
            window.location = '../base/pagina_login.php';
        </script>";
}
?>
<?php include"../base/rodape.php"; ?>