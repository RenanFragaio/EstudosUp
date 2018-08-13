<?php 
	include"../base/conexao.php";
	include"../base/controle.php";
?>
<div class="container-fluid bg-branco">
	<div class="row pad-bottom">
		<div class="page-header pad-left b-header margem-lr"><h3>Últimas &nbsp; <img src="../img/relogio.png" class="mini2" /></h3></div>
		<?php
		$sql = "select id_artigo,titulo,subtitulo,imagem,visualizacoes from artigo where nome_categoria!='Português' and nome_categoria!='Matemática' ";
		$sql .= "and nome_categoria!='História' and nome_categoria!='Geografia' and nome_categoria!='Biologia' and nome_categoria!='Física' ";
		$sql .= "and nome_categoria!='Química' and nome_categoria!='Ocultado' order by data_pub desc limit 6";
		$executa = mysqli_query($conexao,$sql);
		
		$i = 0;
		while($dados = mysqli_fetch_array($executa)){
		echo"<div class='col-lg-2 col-md-2 col-sm-5 col-xs-5 pad-bottom celular1'>
				<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."' class='link sem-linha'>
					<div class='grupo'>
						
							<div class='img-link img-home'>
								<img src='".$dados['imagem']."'/> 
							
						</div>
						<div class='info'>
							<div class='titulo-link'>".$dados['titulo']."</div>
							<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
				</a>
						</div>
					</div>
				
			  </div>
			  <div class='col-lg-offset-0 col-lg-2 col-md-offset-0 col-md-2 col-sm-offset-0 col-sm-5 col-xs-offset-1 col-xs-10 pad-bottom celular2 '>
				<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."' class='link sem-linha'>
					<div class='grupo'>
						
							<div class='img-link'>
								<img src='".$dados['imagem']."'/> 
							</div>
						
						<div class='info'>
							<div class='titulo-link'>".$dados['titulo']."</div>
							<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
				</a>
						</div>
					</div>
	
			  </div>
			  <div class='hidden-lg hidden-md col-sm-1 col-xs-1'></div>";
			$artigo[$i] = $dados['id_artigo'];
			$i = $i + 1;
			}
		?>
	</div>

	<div class="row pad-bottom">
		
			<div class="page-header pad-left b-header margem-lr"><h3>Em destaque &nbsp; <img src="../img/seta-grafico.png" class="mini2" /></h3></div>
			<?php 
			$sql = "select id_artigo,titulo,subtitulo,imagem,visualizacoes from artigo order by visualizacoes desc limit 12";
			$executa = mysqli_query($conexao,$sql);
			
			$c=6; /*Ja foram 6 artigos lá encima(de 0 até 5) então o sexto será o proximo armazenado no vetor*/
			$i=0;
			while($dados = mysqli_fetch_array($executa)){
				switch($dados['id_artigo']){	
					case "$artigo[0]":
					$layout = "";
					break;
					case "$artigo[1]":
					$layout ="";
					break;
					case "$artigo[2]":
					$layout ="";
					break;
					case "$artigo[3]":
					$layout ="";
					break;
					case "$artigo[4]":
					$layout ="";
					break;
					case "$artigo[5]":
					$layout ="";
					break;
					default:
					$layout ="<div class='col-lg-2 col-md-2 col-sm-5 col-xs-5 pad-bottom celular1'>
								<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."' class='link sem-linha'>
								<div class='grupo'>
									
										<div class='img-link img-home'>
											<img src='".$dados['imagem']."'/> 
										</div>
									
									<div class='info'>
										<div class='titulo-link'>".$dados['titulo']."</div>
										<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
								</a>
									</div>
								</div>
								
					</div>
					<div class='col-lg-offset-0 col-lg-2 col-md-offset-0 col-md-2 col-sm-offset-0 col-sm-5 col-xs-offset-1 col-xs-10 pad-bottom celular2'>
								<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."' class='link sem-linha'>
								<div class='grupo'>
									
										<div class='img-link'>
											<img src='".$dados['imagem']."'/> 
										</div>
									
									<div class='info'>
										<div class='titulo-link'>".$dados['titulo']."</div>
										<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
								</a>
									</div>
								</div>
								
					</div>
					<div class='hidden-lg hidden-md col-sm-1 col-xs-1'></div>";
					}
					if(($layout!="")&&($i<=5)){
						$artigo[$c] = $dados['id_artigo'];
						echo $layout;
						$i = $i + 1;
						$c = $c + 1;
					}
					
			}
			?>					
		
	</div>
	<div class="row pad-bottom">
		<div class="page-header pad-left b-header margem-lr"><h3>Estude Agora &nbsp; <img src="../img/estudar1.png" class="mini2" /></h3></div>
		<?php
			$sql = "select id_artigo,titulo,subtitulo,imagem,visualizacoes from artigo where ";
			$sql .= "nome_categoria='Português' or nome_categoria='Matemática' or nome_categoria='História' or ";
			$sql .= "nome_categoria='Geografia' or nome_categoria='Biologia' or nome_categoria='Física' or ";
			$sql .= "nome_categoria='Química' order by data_pub desc limit 24";
			$executa = mysqli_query($conexao,$sql) or die(mysqli_error($conexao));
			
			$i = 0;
			while($dados = mysqli_fetch_array($executa)){
				switch($dados['id_artigo']){
					case "$artigo[0]":
					$layout = "";
					break;
					case "$artigo[1]":
					$layout ="";
					break;
					case "$artigo[2]":
					$layout ="";
					break;
					case "$artigo[3]":
					$layout ="";
					break;
					case "$artigo[4]":
					$layout ="";
					break;
					case "$artigo[5]":
					$layout ="";
					break;
					case"$artigo[6]":
					$layout = "";
					break;
					case"$artigo[7]":
					$layout = "";
					break;
					case"$artigo[8]":
					$layout = "";
					break;
					case"$artigo[9]":
					$layout = "";
					break;
					case"$artigo[10]":
					$layout = "";
					break;
					case"$artigo[11]":
					$layout = "";
					break;
					default:
					$layout ="<div class='col-lg-2 col-md-2 col-sm-5 col-xs-5 pad-bottom celular1'>
								<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."' class='link sem-linha'>
								<div class='grupo'>
									
										<div class='img-link img-home'>
											<img src='".$dados['imagem']."'/> 
										</div>
									
									<div class='info'>
										<div class='titulo-link'>".$dados['titulo']."</div>
										<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
								</a>
									</div>
								</div>
								
					</div>
					<div class='col-lg-offset-0 col-lg-2 col-md-offset-0 col-md-2 col-sm-offset-0 col-sm-5 col-xs-offset-1 col-xs-10 pad-bottom celular2'>
								<a href='../artigo/view_artigo.php?id_artigo=".$dados['id_artigo']."' class='link sem-linha'>
								<div class='grupo'>
									
										<div class='img-link'>
											<img src='".$dados['imagem']."'/> 
										</div>
									
									<div class='info'>
										<div class='titulo-link'>".$dados['titulo']."</div>
										<div class='visualizacoes'>".$dados['visualizacoes']." visualizações</div>
								</a>
									</div>
								</div>
								
					</div>
					<div class='hidden-lg hidden-md col-sm-1 col-xs-1'></div>";
				}
				
				if(($layout!="")&&($i<=5)){
					echo $layout;
					$i = $i + 1;
				}
			}
		?>
	</div>
</div>