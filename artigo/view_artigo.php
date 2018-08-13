<?php 
	include"../base/conexao.php";
	include"../base/controle.php";
	
	if(isset($_GET['id_artigo'])){
	$id_artigo = $_GET['id_artigo'];

	$sql = "select * from artigo where id_artigo='$id_artigo'";
	$seleciona = mysqli_query($conexao,$sql);
	$dados = mysqli_fetch_array($seleciona);
?>
<script type="text/javascript" src="../js/fixo.js"></script>
<div class="container-fluid bg-branco">
	<div class="row bg-cinza">
		<div class="col-lg-12 col-md-12 col-sm-12 hidden-xs pad">
			<img src="../img/anuncio-horizontal2.png" class="img-responsive center-block"/>
		</div>
	</div>
	<div class="row">
		
		<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 bg-branco pad-top pad-left pad-right">
			<!--<div class="artigo-pad">-->
				<div class="row">
					<div class='titulo-artigo'><?php echo $dados['titulo']; ?></div>
					<font size="3" color="#606060"><?php echo $dados['subtitulo']; ?></font>
		
				</div>
				<div class="row linha mg-bottom">
					<br>Publicado em: <?php echo date('d/m/Y',strtotime($dados['data_pub'])); ?><br><br>
				</div>
				
				<?php
				if($dados['visivel']=="Sim"){
				echo"<div class='row pad-bottom linha'>
					<div class='col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1 col-xs-12'>
						<img src='".$dados['imagem']."' class='img-artigo center-block' />
						";
						/*if(){
						"<pre class='text-center legenda'>Carregamento de Navios com suprimentos durante a 2ª guerra mundial</pre>";
						}*/
					echo"</div>
				</div>";
				}
				?>
				<div class="row">
					<pre><?php echo $dados['texto'];?></pre>
				</div>
				
			<!--</div>-->
			
		</div>
		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 pad">
			<div class="fixo">
				<div class="row">
					<div class="col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10 col-xs-offset-1 col-xs-10">
						<div class="page-header b-header"><h3>Mais Lidas &nbsp; <img src="../img/seta-grafico.png" class="mini" /></h3></div>
						<div class="list-group">
						<?php 
							$sql2 = "select id_artigo,titulo,visualizacoes from artigo order by visualizacoes desc limit 5";
							$executar = mysqli_query($conexao,$sql2)or die(mysqli_error($conexao));
							$i = 1;
							
							while($lista = mysqli_fetch_array($executar)){
								echo "<a href='../artigo/view_artigo.php?id_artigo=".$lista['id_artigo']."' class='list-group-item link-lista'>
										<img src='../img/n".$i."o.png'> &nbsp;<b>".$lista['titulo']."</b>
									</a>";
								$i = $i + 1;
							} /*Não queria digitar os 5 items um por um. Então facilitei com este loop*/
						?>					
						</div>
					</div>
				</div>
				<div class="row">
						<img src="../img/anuncio-quadrado2.png" class="center-block hidden-xs aq"/>
				</div>
			</div>
		</div>
		
	</div>
</div>
<?php 
	include"../base/rodape.php"; 
	
	if(($nivel!='adm')&&($nivel!='equipe')){
		if((!isset($_SESSION['visto']))or($_SESSION['visto']!=$id_artigo)){
			$_SESSION['visto'] = "$id_artigo";
			
			$sql = "update artigo set visualizacoes = '".($dados['visualizacoes'] + 1)."' where id_artigo='".$dados['id_artigo']."'";
			$visualizada = mysqli_query($conexao,$sql);
		}
		/*Comentários dos códigos que usei para testar da Contagem de Visualizações*/
		
		/*else if($_SESSION['visto']=="$id_artigo"){
			/*echo"<script>alert('O artigo Já foi Visualizado')</script>;";
			
		}*/
		/*else if($_SESSION['visto']!="$id_artigo"){
			$_SESSION['visto'] = $id_artigo;
			
			$sql = "update artigo set visualizacoes = '".($dados['visualizacoes'] + 1)."' where id_artigo='".$dados['id_artigo']."'";
			$visualizada = mysqli_query($conexao,$sql);
			
		}*/
		/*else{
			echo"<script>alert('Algo deu errado. Página Não encontrada')</script>;";
		}*/
	}
	/*else{
		existe um ADM entrando nessa página
	}*/
}
else{
	echo"<script>
            alert('Página Nao Encontrada ou Removida. Retornando à Home.');
            window.location = '../base/index.php';
        </script>";
}
?>
	