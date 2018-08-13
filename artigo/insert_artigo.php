<?php 
	include"../base/conexao.php";
	
	if(isset($_POST['titulo'])){
		$titulo = trim($_POST['titulo']);
		$subtitulo = trim($_POST['subtitulo']);
		$nome_categoria = $_POST['nome_categoria'];
		$texto = trim($_POST['texto']);
		$data_pub = $_POST['data_pub'];
		
		//recebendo a imagem
		$nome_imagem = $_FILES['imagem']['name'];
		$caminho_tmp = $_FILES['imagem']['tmp_name'];
		$caminho = "../artigo/imagem-artigo/";
		
		$imagem = $caminho . $nome_imagem;
		
		$visivel = $_POST['visivel'];
		
		$sql = "insert into artigo(titulo,subtitulo,nome_categoria,texto,imagem,visivel,data_pub) values('$titulo','$subtitulo','$nome_categoria','$texto','$imagem','$visivel','$data_pub')";
		$inserir = mysqli_query($conexao,$sql) or die (mysqli_error($conexao));
		
		if($inserir){
			move_uploaded_file($caminho_tmp,$imagem);
			echo"<script>
			alert ('Artigo Cadastrado com Sucesso!!');
			window.location='lista_artigo.php';
			</script>";
		}
		else{
			echo"<script>
			alert ('Erro Ao Atualizar Banco de Dados. Tente Novamente Mais Tarde Ou Contate O Administrador do Site.');
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