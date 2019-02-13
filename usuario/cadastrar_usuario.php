<?php 
	include"../base/controle.php";
	
	if(isset($_GET['nivel'])){
		$nivel_cadastrando = $_GET['nivel'];
	}
	else{
		$nivel_cadastrando = '';
	}
?>

<div class="container-fluid">
	
	<form name="cadastro" id='cadastro1' method="post" action="../usuario/insert_usuario.php" enctype="multipart/form-data">
	<!-- area de campos do form-->
	
	<div class="row bg-branco">
		
		<h3 class="page-header text-center">Cadastro de usuário</h3>
		
		<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-0 col-xs-12">
			<div class="form-group">
					<label for="Nome">Nome:</label>
					<input type="text" class="form-control" name="nome" maxlength="30" required>
			</div>
			<div class="form-group">
					<label for="email">Email:</label>
					<input type="email" class="form-control" name="email" maxlength="80" required>
			</div>
			<div class="form-group">
					<label for="senha1">Senha:</label>
					<input type="password" class="form-control" name="senha1" maxlength="60" required>
			</div>
			<div class="form-group">
					<label for="senha2">Confirmação de Senha:</label>
					<input type="password" class="form-control" name="senha2" maxlength="60" required>
			</div>
			
			<!-- enviando nivel do usuario -->
			<input type="hidden" name="nivel_cadastrando" value="<?php echo $nivel_cadastrando; ?>">
			
			<!-- possibilitando adição de uma foto e alteração do nível por um administrador -->
			<?php if($nivel_cadastrando=='adm'){
			echo"
			<div class='form-group'>
				<label for='nivel'>Nível de Usuário:</label>
				<select name='nivel' id='nv' class='form-control' onchange='nivelfoto()'>
					<option>--</option>
					<option>adm</option>
					<option>visitante</option>
				</select>
			</div>
			<div id='aqui'>
			</div>
			"; 
			}
			else{
				echo"<input type='hidden' name='nivel' id='nv' value='visitante'>";
			}
			?>
			<div class="form-group">
				<a onclick="history.go(-1)" class="btn btn-default">Voltar</a> | <button type="button" onclick="envio()" class="btn btn-primary">Confirmar</a>
			</div>
		</div>
		</form>
	</div>
	
</div>
<script>
	if(document.getElementById('nv').value=='adm'){
		document.getElementById('aqui').innerHTML = "<div class='form-group'><label for='foto'>Foto</label><input type='file' class='form-control' name='foto'></div>";
	}
 function nivelfoto(){
	 var escreva = "<div class='form-group'><label for='foto'>Foto</label><input type='file' class='form-control' name='foto'></div>";
		
	 if(document.getElementById('nv').value=='adm'){
		document.getElementById('aqui').innerHTML = escreva; 
	 }
	 else{
		 alert("apenas adms podem ter foto");
		 document.getElementById('aqui').innerHTML='';
		 return;
	 }
 }
 function envio(){
	if(document.getElementById('nv').value=='--'){
		alert("Escolha um nível para o Usuário. (Obtigatório)");
	}
	else{
		document.getElementById('cadastro1').submit();
	}
 }
</script>
<?php include"../base/rodape.php"; ?>