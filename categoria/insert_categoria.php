<?php 
	include"../base/conexao.php";
	
	if(isset($_POST['nome_categoria'])){
		$nome_categoria = $_POST['nome_categoria'];
		
		$sql = "select nome_categoria from categoria where nome_categoria='$nome_categoria'";
		$seleciona = mysqli_query($conexao,$sql);
		$existe = mysqli_num_rows($seleciona);
		
		if($existe==0){
		
			$sql = "insert into categoria(nome_categoria) values('$nome_categoria')";
			$inserir = mysqli_query($conexao,$sql) or die (mysqli_error($conexao));
			
			if($inserir){
				echo"<script>
				alert ('Categoria Criada com Sucesso!!');
				window.location='lista_categoria.php';
				</script>";
			}
			else{
				echo"<script>
				alert ('Erro ao Inserir Categoria no Banco de Dados. Tente Novamente Mais Tarde ou Contate o Administrador do Site.');
				history.go(-1);
				</script>";
			}
		}
		if($existe>0){
			echo"<script>
			alert('A Categoria $nome_categoria já existe. Não é Permitida a Criação de Categorias com o Mesmo Nome');
			history.go(-1);
			</script>";
		}
		else{
			echo"<script>
			alert('Houve um problema na Verificação de Categorias. Contate o Administrador do Site ou Tente Novamente mais Tarde');
			history.go(-1);
			</script>";
		}
	}
	else{
		echo"<script>
			alert('Área Restrita a Usuários Administradores. Retornando à Página de Login');
			window.location='../base/pagina_login.php';
		</script>";
	}
?>