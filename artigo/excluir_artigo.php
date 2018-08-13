<?php 
	include"../base/conexao.php";
	
	if(isset($_GET['id_artigo'])){
	$id_artigo = $_GET['id_artigo'];
	
	$sql = "delete from artigo where id_artigo=$id_artigo";
	$seleciona = mysqli_query($conexao,$sql);
	
		if($seleciona){
			echo"<script>
			alert('Artigo Excluído com sucesso');
			window.location='lista_artigo.php';
			</script>";
		}
		else{
			echo"<script>
			alert('Erro ao Excluir Artigo do Banco de Dados. Tente Novamente Mais Tarde ou Contate o Administrador do Site');
			history.go(-1);
			</script>";
		}
	
	}
	else{
		echo"<script>
            alert('Área restrita a usuários administradores. Retornando à Página de Login.');
            window.location = '../base/pagina_login.php';
        </script>";
	}
?>