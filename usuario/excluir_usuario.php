<?php 
	include"../base/conexao.php";
	
	if(isset($_GET['id_usuario'])){
	$id_usuario = $_GET['id_usuario'];
	
	$sql1 = "select nivel from usuario where id_usuario=$id_usuario limit 1";
	$seleciona1 = mysqli_query($conexao,$sql1);
	
	$dado = mysqli_fetch_assoc($seleciona1);
	
	$nivel = implode($dado,"");
	
		if(($nivel=="adm")&&($id_usuario==1)){
			echo"<script>
			alert('Não é permitido excluir a conta administradora principal do site. Apenas é possível excluir outros ADMs');
			history.go(-1);
			</script>";
		}
		else{
	
			$sql = "delete from usuario where id_usuario='$id_usuario'";
			$seleciona = mysqli_query($conexao,$sql);
	
			if($seleciona){
				echo"<script>
				alert('Usuario Excluído com sucesso');
				window.location='../usuario/lista_usuario.php';
				</script>";
			}
			else{
				echo mysqli_error($conexao);
				echo"<script>
				alert('Erro ao Deletar Usuário do Banco de Dados. Tente novamente mais tarde ou contate o administrador do site.');
				history.go(-1);
				</script>";
			}
	
		}
	}
	else{
		echo"<script>
            alert('Área restrita a usuários administradores. Retornando à Página de Login.');
            window.location = '../base/pagina_login.php';
        </script>";
	}
?>