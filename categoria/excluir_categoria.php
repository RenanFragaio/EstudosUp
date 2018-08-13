<?php 
	include"../base/conexao.php";
	
	if(isset($_GET['nome_categoria'])){
	$nome_categoria = $_GET['nome_categoria'];
			
	/* verifica se ainda existem artigos atrelados à esta categoria */
			
	$sql = "select nome_categoria from artigo where nome_categoria='$nome_categoria'";
	$seleciona = mysqli_query($conexao,$sql);
	$existe = mysqli_num_rows($seleciona);
			
		if($existe==0){

		$sql = "delete from categoria where nome_categoria='$nome_categoria'";
		$excluir = mysqli_query($conexao,$sql);
		
			if($excluir){
				echo"<script>
				alert('Categoria Excluída com sucesso');
				window.location='lista_categoria.php';
				</script>";
			}
			else{
				echo mysqli_error($conexao);
				echo"<script>
				alert('Erro ao Excluir a Categoria. Tente Novamente Mais Tarde ou Contate o Administrador do Site.');
				history.go(-1);
				</script>";
			}
		}
		if($existe>0){
			echo"
			<script>
			alert('Não é permitido Excluir esta Categoria. Primeiro Exclua todos os Artigos relacionados à ela. OU: Edite-os e mude a categoria em que estão.');
			history.go(-1);
			</script>";
		}
		else{
			echo mysqli_error($conexao);
			echo"<script>
			alert('Erro ao Verificar os Artigos Da Categoria Selecionada. Tente Novamente Mais Tarde ou Contate o Administrador do Site.');
			history.go(-1);
			</script>";
		}
	}
else{
	echo"<script>
		alert('Área Restrita a Usuários Administradores. Retornando à Página de Login');
		history.go(-1);
		</script>";
}
	
?>