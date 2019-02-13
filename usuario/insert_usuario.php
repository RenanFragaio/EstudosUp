<?php
include"../base/conexao.php";
include"../base/controle.php";
	
if(isset($_POST['nome'])){
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$senha1 = $_POST['senha1'];
	$senha2 = $_POST['senha2'];
	$nivel = $_POST['nivel'];
	
	if(isset($_POST['nivel_cadastrando'])){
		$nivel_cadastrando = $_POST['nivel_cadastrando'];
	}
	else{
		$nivel_cadastrando = '';
	}
	//Se um adm cadastra um usuário, retorna para a lista de usuarios. Se um visitante se cadastra, ele retorna à pagina de Login.
	
	if(($nivel_cadastrando=='adm')&&($nivel=="adm")){
		if(($_FILES['foto']['name']=="")||($_FILES['foto']['tmp_name']=="")){
			$upload = "";
			
			$foto = "../usuario/foto/semfoto.jpg";
			
		}
		else{
		$pag = "../usuario/lista_usuario.php";
		
		/* recebendo uma foto para o administrador */
		$nome_foto = $_FILES['foto']['name'];
		$caminho_tmp = $_FILES['foto']['tmp_name'];
		$caminho = '../usuario/foto/';
		
		$foto = $caminho . $nome_foto;
		
		$upload = move_uploaded_file($caminho_tmp,$foto);
		
		}
	}
	else if(($nivel_cadastrando=='adm')&&($nivel='visitante')){
		$pag = "../usuario/lista_usuario.php";
		
		$upload ='';
	}
	else{
		$pag = "../base/pagina_login.php";	
		$foto = "../usuario/foto/semfoto.jpg";
	}
		if($senha1==$senha2){
		
			$sql = "select email from usuario where email='$email'";
			$verifica = mysqli_query($conexao,$sql);
			$rows = mysqli_num_rows($verifica);
			
			if($rows=='0'){
				
			$sqlf = "insert into usuario(nome,email,senha,nivel,foto) values ('$nome','$email','$senha1','$nivel','$foto');";
			$insere = mysqli_query($conexao,$sqlf);
			
				if($insere){
						if($foto!='../usuario/foto/semfoto.jpg'){
							$upload;
						}
						echo"<script>
							alert('Usuario cadastrado com sucesso');
							window.location='".$pag."';
							</script>";
				}
				else{
					echo mysqli_error($conexao);
					echo"<script>
					alert('Houve um problema ao inserir os dados. Tente novamente mais tarde ou contate o administrador do site.');
					history.go(-1);
					</script>";
				}
			}
			else if($rows=='1'){
			echo"<script>
					alert('O email informado já existe cadastrado em outro usuário. Informe um email diferente.');
					history.go(-1);
				</script>";
			}
			else{
				echo"<script>
				alert('Houve um problema na verificação do email. Tente novamente mais tarde ou contate o administrador do site.');
				history.go(-1);
				</script>";
			}
		}	
		else if($senha1!=$senha2){
			echo"<script>
					alert('As senhas não coincidem.');
					history.go(-1)
				</script>";
		}
		else{
			echo mysqli_error($conexao);
			echo"<script>
				alert('Houve um problema na verificação da senha. Tente novamente mais tarde ou contate o administrador do site.');
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
include"../base/rodape.php";
?>