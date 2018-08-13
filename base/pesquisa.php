<?php
	include"conexao.php";
	include"controle.php";
	
	if(isset($_POST['busca'])){
	$busca = $_POST['busca'];
	
	$sql = "select * from artigo where titulo like '%$busca%' or nome_categoria like '%$busca%'";
	$executa = mysqli_query($conexao,$sql)or die(mysqli_error($conexao));
	
	$numero = mysqli_num_rows($executa);
	
	$resultado = "";
		while($dados = mysqli_fetch_array($executa)){
		$resultado .="<div class='row'>
						<div class='lista list-group-item bg-link pad linha sem-margem'>
					<a class='link' href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."'>
					<div class='row'>
						<div class='col-lg-3 col-md-4 col-sm-6 col-xs-4 celular1'>
							<div class='row'>
								
									<div class='img-link img-sm'>
										<img src='".$dados['imagem']."'>
									</div>
								
							</div>
						</div>
						<div class='col-lg-offset-0 col-lg-3 col-md-offset-0 col-md-4 col-sm-offset-0 col-sm-5 col-xs-offset-0 col-xs-12 celular2'>
							<div class='row'>
								<div class='col-lg-12 col-md-12 col-sm-12 col-xs-offset-1 col-xs-10'>
									
										<div class='img-link img-sm'>
											<img src='".$dados['imagem']."'>
										</div>
									
								</div>
							</div>
						</div>
						<div class='col-lg-8 col-md-8 col-sm-7 col-xs-8 celular1'>
							<div class='titulo-link'>".$dados['titulo']."</div><br/>
							".$dados['nome_categoria']."<br/>
							
							<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
						</div>
						<div class='col-lg-offset-0 col-lg-8 col-md-offset-0 col-md-8 col-sm-offset-0 col-sm-7 col-xs-offset-1 col-xs-10 celular2'>
							<div class='titulo-link'>".$dados['titulo']."</div>
							<div class='hidden-xs'>
								".$dados['nome_categoria']."<br/>
								
							</div>
							<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
						</div>
					</div><!--row-->
					</a>
				</div><!--list group item-->
				</div>";
		}
		echo"<script type='text/javascript' src='../js/fixo.js'></script>
			<div class='container-fluid'>
				<div class='row'>
					<div class='page-header pad-left'><font size='5'> ".$numero." resultados para \"".$busca."\"</font></div>
					<div class='col-lg-7 col-md-7 col-sm-7 col-xs-12 pad-left pad-right'>
					".$resultado."
					</div>
					<div class='col-lg-5 col-md-5 col-sm-5 col-xs-12'>
						<div class='fixo'>
							<div class='row'>
								<div class='col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10 col-xs-offset-1 col-xs-10'>
									<div class='page-header b-header'><h3>Mais Lidas &nbsp; <img src='../img/seta-grafico.png' class='mini' /></h3></div>
									<div class='list-group'>";
						
										$sql2 = 'select id_artigo,titulo,visualizacoes from artigo order by visualizacoes desc limit 5';
										$executar = mysqli_query($conexao,$sql2)or die(mysqli_error($conexao));
										$i = 1;
										
										while($lista = mysqli_fetch_array($executar)){
											echo "<a href='../artigo/view_artigo.php?id_artigo=".$lista['id_artigo']."' class='list-group-item link-lista'>
													<img src='../img/n".$i."o.png'> &nbsp;<b>".$lista['titulo']."</b>
												</a>";
											$i = $i + 1;
										}/*Escrevendo todos os 5 links que possuem o maior número de visualizações*/
												
								echo"</div>
								</div>
							</div>
							<div class='row'>
								<img src='../img/anuncio-quadrado2.png' class='center-block hidden-xs aq'/>
							</div>
						</div><!--fixo-->
					</div><!--col-lg-5..-->
				</div><!--row-->
			</div><!--container-fluid-->";
	}
	else{
		echo"<script>
		alert('Página não encontrada ou removida. Retornando para a página inicial');
		window.location='../base/index.php';
		</script>";
	}
	include"rodape.php";
?>
