<?php
	include"../base/conexao.php";
	
	
	if(isset($_POST['email'])){
	$id_usuario = $_POST['id_usuario'];
	
	if(isset($_POST['nivel'])){
		$nivel = $_POST['nivel'];
	}
	else{
		$nivel = "visitante";
	}
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	
	/* //selecionando foto atual do usuario, para impedir alterações se o campo "foto" estiver vazio.
	$sql = "select foto from usuario where id_usuario=$id_usuario limit 1";
	$seleciona = mysqli_query($conexao,$sql);
	
	while($dado = mysqli_fetch_assoc($seleciona)){
		$fotoatual = $dado['foto'];
		echo "<script>
            alert('".$fotoatual."');
        </script>";
	}*/
	
	if($nivel=="adm"){
		if(($_FILES['foto']['name']=="")||($_FILES['foto']['tmp_name']=="")){
			$upload = "";
			
			$sql = "update usuario set nome = '$nome', email = '$email' where id_usuario = $id_usuario";
		}
		else{
			$nome_foto = $_FILES['foto']['name'];
			$caminho_tmp = $_FILES['foto']['tmp_name'];
			$caminho = "../usuario/foto/";
	
			$foto = $caminho . $nome_foto;
			$upload = move_uploaded_file($caminho_tmp,$foto);
			
			session_start();
			if($_SESSION['id_usuario']==$id_usuario){
			$_SESSION['foto'] = $foto;
			$_SESSION['nome'] = $nome;
			$_SESSION['email'] = $email;
			}
			$sql = "update usuario set nome = '$nome', email = '$email', foto='$foto' where id_usuario = $id_usuario";
		}
	}
	else{
		$sql = "update usuario set nome = '$nome', email = '$email' where id_usuario = $id_usuario";
	}
	$sql2 = "select id_usuario,email from usuario where email='$email'";
	$seleciona = mysqli_query($conexao,$sql2);
	
	$existe = mysqli_num_rows($seleciona);
	
	$dados = mysqli_fetch_array($seleciona);
	
	if(($existe==1) && ($id_usuario!=$dados['id_usuario'])){
			//verificar se o email que existe é o email atual do usuário
            //se o id do usuario que está sendo editado for diferente do id do usuario ao qual o email digitado pertence, o email pertence a outro usuario.
            
                        echo"<script>
                        alert('O email O email informado já foi cadastrado em outro usuário. Digite um email diferente.');
                        </script>;";
		}
        else{
			$atualiza = mysqli_query($conexao,$sql);
        
				if($atualiza){
					$upload;
					echo "<script>
						alert('Dados Atualizados com Sucesso!!');
						window.location='../usuario/lista_usuario.php';
						</script>";
				}
				else{
					echo "<script>
						alert('Erro ao Atualizar o Banco de Dados. Tente Novamente Mais tarde ou Contate o Administrador do Site.');
						history.go(-1);     
						</script>";
				}
		}    
	}
    else{
        echo "<script>
            alert('Área restrita a usuários administradores. Retornando à Página de Login.');
            window.location = '../base/pagina_login.php';
        </script>";
    }
?>

