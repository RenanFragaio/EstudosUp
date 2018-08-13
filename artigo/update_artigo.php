<?php
	include"../base/conexao.php";
	
	
	if(isset($_POST['id_artigo'])){
	$id_artigo = $_POST['id_artigo'];
	$titulo = trim($_POST['titulo']);
	$subtitulo = trim($_POST['subtitulo']);
	$nome_categoria = $_POST['nome_categoria'];
	$texto = trim($_POST['texto']);
	$data_pub = $_POST['data_pub'];
	$visivel = $_POST['visivel'];
	
	if(($_FILES['imagem']['name']=="")||($_FILES['imagem']['tmp_name']=="")){
			$upload = "";
			
			$sql = "update artigo set titulo = '$titulo', subtitulo = '$subtitulo', nome_categoria='$nome_categoria', texto='$texto', visivel = '$visivel', data_pub='$data_pub' where id_artigo = $id_artigo";
	}
	else{
	//recebendo a foto
	$nome_img = $_FILES['imagem']['name'];
	$caminho_tmp = $_FILES['imagem']['tmp_name'];
	$caminho = "../artigo/imagem-artigo/";
	
	$imagem = $caminho . $nome_img;
	
	$sql = "update artigo set titulo = '$titulo', subtitulo = '$subtitulo', nome_categoria = '$nome_categoria', texto = '$texto', imagem ='$imagem', visivel = '$visivel', data_pub = '$data_pub' where id_artigo = '$id_artigo'";
	
	$upload = move_uploaded_file($caminho_tmp,$imagem);
	}
	
	$atualiza = mysqli_query($conexao,$sql);
		
		if($atualiza){
			$upload;
			echo "<script>
				alert('Dados Atualizados com Sucesso!!');
				window.location='../artigo/lista_artigo.php'
				</script>";
		}
		else{
			echo "<script>
				alert('Erro ao Atualizar Banco de Dados. Tente Novamente Mais Tarde ou Contate o Administrador do Site.');
				history.go(-1);
				</script>";
		}   
	}
    else{
        echo "<script>
            alert('Área restrita a usuários administradores. Retornando à Página de Login.');
            window.location = '../base/pagina_login.php';
        </script>";
    }
?>

