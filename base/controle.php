<?php
if(!isset($_SESSION)){
	session_start();
}
include"../base/conexao.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- Estas 3 meta tags devem estar no head e devem vir antes de qualquer outra meta tag -->
		<meta name="description" content="Seu portal oline de estudos"/>
		<title>Estudos Up!</title>	
    </head>
<body> 
<!-- declarando os arquivos css-->
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen"/>
<link href="../css/estilo.css" rel="stylesheet" media="screen"/>

<!-- Referenciando as classes com scripts JQuery e bootstrap -->
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<!-- função javascript que mostra o tamanho da tela -->
<!--<script>
	var largura = window.innerWidth;
	var altura = window.innerHeight;
	alert("Largura:" + largura + "  Altura:" + altura);
</script>-->
<nav class="navbar navbar-default bg-branco">
  <div class="container-fluid">
		
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar c-azul"></span>
        <span class="icon-bar c-azul"></span>
        <span class="icon-bar c-azul"></span>
      </button>		
			
			<a class="pull-left" href="../base/index.php"><img class="img-responsive logo" src="../img/logo.png"/></a>
			
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav">
		   <!--<li class="active"><a href="#"><span class="sr-only">(current)</span></a></li>-->
			
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Resumos<span class="caret"></span></a>
			  <ul class="dropdown-menu">
				<li class='dropdown-header bg-cinza'><b>Ensino Médio</b></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=Português">Português</a></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=Matemática">Matemática</a></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=História">História</a></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=Geografia">Geografia</a></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=Biologia">Biologia</a></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=Física">Física</a></li>
				<li><a href="../artigo/conteudo.php?nome_categoria=Química">Química</a></li>
			  </ul>
			</li>
			
			<li><a href="../artigo/conteudo.php?nome_categoria=Vestibular" class="link">Vestibular</a></li>
			<li><a href="../artigo/conteudo.php?nome_categoria=Dicas de Estudo" class="link">Dicas de Estudo</a></li>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mais<span class="caret"></span></a>
			  <ul class="dropdown-menu">
				<?php
					$sql = "select nome_categoria from categoria where nome_categoria!='Português' and nome_categoria!='Matemática'";
					$sql .= "and nome_categoria!='História' and nome_categoria!='Geografia' and nome_categoria!='Biologia' and nome_categoria!='Física'";
					$sql .= "and nome_categoria!='Química' and nome_categoria!='Vestibular' and nome_categoria!='Dicas de Estudo' and nome_categoria!='Ocultado'";
					$seleciona = mysqli_query($conexao,$sql);
					
					while ($dados = mysqli_fetch_array($seleciona)){
						echo"<li><a href='../artigo/conteudo.php?nome_categoria=".$dados['nome_categoria']."'>".$dados['nome_categoria']."</a></li>";
					}
					
				?>
				<li><a href="../artigo/conteudo.php?nome_categoria=Todos">Todos</a></li>
			  </ul>
			</li>
			
			<li class="dropdown pesquisa">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
				<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
			  </a>
			  <ul class="dropdown-menu">
				<li>
					<form name="pesquisar" method="post" class="navbar-form" action="../base/pesquisa.php">
						<div class="input-group">
						  <input type="text" name="busca" class="form-control" placeholder="Pesquisar">
						  <span class="input-group-btn">
							<button class="btn btn-primary" type="submit">
								<span class="glyphicon glyphicon-search" aria-hidden="true">
							</button>
						  </span>
						</div>
					</form>
				</li>
			  </ul>
			</li>
			
			<!-- barra de pesquisa para Tablets e Celulares -->
			<li class="pesquisa-m">
				<form name="pesquisar" method="post" class="navbar-form sem-borda c-pesquisa" action="../base/pesquisa.php">
					<div class="input-group">
						<input type="text" name="busca" class="form-control" placeholder="Pesquisar">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="submit">
									<span class="glyphicon glyphicon-search" aria-hidden="true">
								</button>
						  </span>
					</div>
				</form>
			</li>
		<?php
		
		if(isset($_SESSION['nome'])){
			$nome = $_SESSION['nome'];
			$email = $_SESSION['email'];
			$foto = $_SESSION['foto'];
			$nivel = $_SESSION['nivel'];
			echo"
				<li class='dropdown'>
				
				 <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>
					<img src='$foto' class='img-login'/>
						<font size='2' class='link'> $nome</font><span class='caret'></span>
				</a>
					<ul class='dropdown-menu'>";
					if($nivel=="adm"){
						echo"<li><a href='../base/adm.php' class='link'>Area Restrita</a></li>";
					}
						echo"<li><a href='../base/logout.php' class='link'>Sair</a></li>
					</ul>
				</li>";
		}
		else{
			echo"<li><a href='../base/pagina_login.php'>Login</a></li>";
			$nivel = ""; /*importante para o funcionamento das visualizações*/
		}
		?>
			
		  </ul>
		  
		  
		</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<div id="holder">