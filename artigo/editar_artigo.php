<?php 
	include"../base/seguranca_adm.php";
	include"../base/conexao.php"; 
	include"../base/controle.php"; 
	
	if(isset($_GET['id_artigo'])){
	$id_artigo = $_GET['id_artigo'];
	
	/*selecionando dados do artigo*/
	
	$sql = "select * from artigo where id_artigo='$id_artigo'";
	$seleciona = mysqli_query($conexao,$sql);
	
	$dados = mysqli_fetch_array($seleciona);
	
	$sql2 = "select * from categoria";
	$seleciona2 = mysqli_query($conexao,$sql2);
	
	//echo"<script>alert('".$dados['data_pub']."');</script>";
	
	$data = str_replace(" ","T",$dados['data_pub']);
	//echo"<script>alert('$data');</script>";
	
	$data = substr($data,0,16);
	//echo"<script>alert('$data');</script>";
						
?>
<div class="container-fluid">
<form name="editar" method="post" action="../artigo/update_artigo.php" enctype="multipart/form-data">
	<!-- area de campos do form-->
	
	<div class="row bg-branco">
		
		<h3 class="page-header text-center">Editar dados do Artigo</h3>
		
		<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-0 col-xs-12">
			<div class="form-group">
				<label for="data_pub">Data da Publicação</label>
				<div class="input-group">
						<input type="datetime-local" class="form-control" id="dt" name="data_pub" value="<?php echo $data;?>" required>
					<span class="input-group-btn">
						<button class="btn btn-success" type="button" onclick="data_hora()">Informar Data Atual</button>
					</span>
				</div>
			</div>
			<div class="form-group">
					<label for="titulo">Titúlo</label>
					<input type="text" class="form-control" name="titulo" maxlength="80" value="<?php echo $dados['titulo'];?>" required>
			</div>
			<div class="form-group">
					<label for="subtitulo">Subtitulo</label>
					<textarea class="form-control" name="subtitulo"><?php echo $dados['subtitulo'];?></textarea>
			</div>
			<div class="form-group">
					<label for="nome_categoria">Categoria</label>
					<select  class='form-control' name="nome_categoria" required>
						<?php 
							$n_categoria = mysqli_num_rows($seleciona2);
							
							while ($categoria = mysqli_fetch_array($seleciona2)){
								switch ($categoria['nome_categoria']){
									case $dados['nome_categoria']:
									echo"<option selected='selected'>".$categoria['nome_categoria']."</option>";
									break;
									
									default:
									echo "<option>".$categoria['nome_categoria']."</option>";
									break;
								}
							}
						?>
					</select><br />
					<a class="btn btn-success" href="../categoria/cadastrar_categoria">Criar Nova Categoria</a>
			</div>
			<div class="form-group">
					<label for="texto">Texto</label>
					<textarea rows="10" class="form-control" name="texto" required><?php echo $dados['texto']?></textarea>
			</div>
			<div class="form-group">
					<label for="imagem">Imagem</label>
					<input type="file" name="imagem" class="form-control" />
					
					<b>Foto Atual:</b><br>
					<div class='row'>
						<div class='col-xs-6 col-sm-4 col-md-4 col-lg-6 col-centered'>	
							<div class='thumbnail'>
								<img src="<?php echo $dados['imagem']; ?>" />
							</div>
						</div>
					</div>
			</div>
			<div class="form-group">
				<label>A Imagem Será Visível no Artigo?</label>
				<select class="form-control" name="visivel">
					<?php
					if($dados['visivel']=="Sim"){
						$opcao1 = "selected";
						$opcao2 = "";
					}
					else{
						$opcao1 = "";
						$opcao2 = "selected";
					}
					echo"<option ".$opcao1.">Sim</option>
					<option ".$opcao2.">Não</option>";
					
					?>
				</select>
				<br/><b>!! A Foto Atual e as demais informações serão alteradas apenas ao clicar no botão "Atualizar"</b><br/><br/>
					<b>!! Não é recomendado o uso de imagens redondas/circulares</b><br/><br/>
					<b>!! Recomenda-se imagens retangulares com comprimento não muito maior que a altura.</b>
			</div>
				
				<input type="hidden" name="id_artigo" value="<?php echo $dados['id_artigo']; ?>">
			
			<div class="form-group">
				<a href="../artigo/lista_artigo.php" class="btn btn-default">Voltar</a> | <button type="submit" class="btn btn-primary">Atualizar</a>
			</div>
		</div>
		</form>
		
	</div>
	
</div>
<script>
function data_hora(){
	var
	hoje = new Date();
	
	//O dia, o mês, as horas e os minutos precisam ter no mínimo 2 digitos. Ou seja, 9 deve ser 09.
	
	dia = hoje.getDate();
	dia = dia.toString();
	
	if (dia < 10){  //se for menor que 10, adicione um zero antes.
		dia = (0 + dia);
	}
	
	mes = parseInt(hoje.getMonth() + 1);
	mes = mes.toString();
	
	if(mes <10){
		
		mes = (0 + mes);
	}
	
	ano = hoje.getFullYear();
	ano = ano.toString();
	
	hora = hoje.getHours();
	hora = hora.toString();
	
	if(hora < 10){
		hora = (0 + hora);
	}
	
	minuto = hoje.getMinutes();
	minuto = minuto.toString();
	
	if(minuto < 10){	
		minuto = (0 + minuto);
	}
	
	data_atual = ano + "-" + mes + "-" + dia + "T" + hora + ":" + minuto;
	
	/*alert(dia); //Alerts de teste
	alert(mes);
	alert(ano);
	alert(ano);
	alert(hora);
	alert(minuto);
	alert("Data Atual - " + data_atual);*/
	
	document.getElementById('dt').value = data_atual;
}
</script>
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