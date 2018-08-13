<?php 
	include "../base/conexao.php";
	include "../base/controle.php"; 
	
	if(isset($_GET['nome_categoria'])){
	$nome_categoria = $_GET['nome_categoria'];
?>
<script type="text/javascript" src="../js/fixo.js"></script>
<div class="container-fluid bg-branco">
	<div class="row bg-cinza">
		<div class="col-lg-12 col-md-12 col-sm-12 hidden-xs pad-lg">
			<img src="../img/anuncio-horizontal.png" class="img-responsive center-block"/>
		</div>	
	</div>
	<div class="row">
		<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12 pad-left pad-right">
			<div class="row bg-branco">
				<h2 class="page-header b-header"><?php echo $nome_categoria;?></h2>
			</div>
			<div class="list-group">
			<?php 
			
			$quantidade = 20;
			$pagina = (isset($_GET['pagina'])) ? (int)$_GET['pagina'] : 1;
		
			$inicio = (($pagina * $quantidade) - $quantidade); 
			/*pagina 1 * 10 = 10 - 10 = 0. inicio no artigo 0*/
			/*pagina 2 * 10 = 20 - 10 = 10. inicio no artigo 10*/
		
			if($nome_categoria=="Todos"){
				$sql = "select * from artigo where nome_categoria!='Ocultado' order by data_pub desc limit $inicio, $quantidade";
			}/*os artigos ocultados poreão ser vistos apelas pelo admnistrador*/
			else{
				$sql = "select * from artigo where nome_categoria='$nome_categoria' order by data_pub desc limit $inicio, $quantidade";
			}
			/*inicio0 - limite10, inicio10 - limite 10, inicio20 - limite10... etc (desc)
			Portanto serão mostrados 10 artigos em cada página:de 0 a 9, de 10 a 19, de 20 a 29.... etc*/
			/*Lembrete: numeros sao revertidos quando a forma abreviada do offset no limit é usada */
			$seleciona = mysqli_query($conexao,$sql);

				while($dados = mysqli_fetch_array($seleciona)){ 
				echo"<div class='lista list-group-item bg-link pad linha sem-margem'>
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
				";
				}
			?>
			</div><!-- list-group-->
			<div class="row text-center">
					<div class="table-responsive sem-borda">
					<table class="table">
					<tr>
					<td>
					<nav aria-label='Navegação por Página'>
						<ul class="pag pagination">
						<?php 
						if($nome_categoria=="Todos"){
							$sqlTotal = "select id_artigo from artigo where nome_categoria!='Ocultado'";
						}
						else{
							$sqlTotal = "select id_artigo from artigo where nome_categoria='$nome_categoria'";
						}
						
						$qrTotal = mysqli_query($conexao,$sqlTotal);
						$quantTotal = mysqli_num_rows($qrTotal);
						
						$totalpagina = (ceil($quantTotal/$quantidade) <=0) ? 1 : ceil($quantTotal/$quantidade); 
						/*calcula a quantidade de páginas que serão necessárias, arredondando para cima.
						Exemplo: 22 registros -> 22 dividido por 10(dez artigos cada página) = 2,2. Arredondando para cima = 3 páginas.
						São 3 páginas pois existirão 10 artigos na página 1, 10 também na página 2, e apenas 2 na página 3.
						Assim seriam 22 artigos com 10(no máximo) em cada página.*/
						
						switch($totalpagina){
							case 1:
							$exibir = 0; 
							break;
							case 2:
							$exibir = 1; 
							break;
							default:
							$exibir = 3;
							break;
						}/*$exibir é o número de páginas que serão monstradas, tanto posteriores quanto anteriores.
						Exemplo: se exibir for 1, e a página 2, serão mostradas as páginas 1,2,3. (1 antes e 1 depois) 
						Exemplo2: Se exibir for 3, e a página 4, serão mostradas as páginas 1,2,3,4,5,6,7 (3 antes e 3 depois)
						Exemplo3: se exibir for 3, e a página 3, serão mostradas as páginas 1,2,3,4,5,6 (2 antes e 3 depois, pois não existe página antes de 1.)*/
						
						/*Adicionando exceções à regra apenas para as primeiras páginas*/
						if($pagina<=3){
							$c = 1; //é o início do contador. inicia em 1 se a página for menor ou igual a 3. pois não há numeros antes de 1.*/
							$limite = 3; //limite onde o contador abaixo deveria ser encerrado para as primeiras páginas.
						}
						else{
							$c = $pagina-$exibir; /*O início do contador.
							é definido pela página atual menos o número de paginas que serão exibidas, motivo da existência da variável "$exibir".
							Verificar "Exemplo2" acima.*/
							
							$limite = $pagina-1; //limite onde o loop abaixo deveria ser encerrado normalmente
						}
						
						$anterior = (($c-1) <= 0) ? 1 : $c - 1; 
						/*O botão "<<" levará o usuário para uma página antes da primeira exibida na paginação. Impedindo que seja menor que a primeira pag.*/
						
						$posterior = (($pagina+$exibir+1) >= $totalpagina) ? $totalpagina : $pagina+$exibir+1;
						/*O botão ">>" levará o usuário para uma página depois da última exibida na paginação. Impedindo que seja maior que a última pag*/
						
						echo"<li class='pg rd'><a href='?pagina=1&nome_categoria=".$nome_categoria."'>Primeira</a></li>";
						echo "<li class='mg pg rd'><a href='?pagina=".$anterior."&nome_categoria=".$nome_categoria."'><<</a></li> ";
						
						for($i = $c; $i < $pagina; $i++){
							if($i<=$limite){
								echo "<li class='pg rd'><a href='?pagina=".$i."&nome_categoria=".$nome_categoria."'> ".$i." </a></li> ";
							}
						}/*Loop que imprime as páginas anteriores à atual*/
						
						echo "<li class='atv rd'><a href='?pagina=".$pagina."&nome_categoria=".$nome_categoria."'><strong>".$pagina."</strong></a></li> ";
						/*Página atual. Permanece Selecionada*/	
							
						for($i = $pagina+1; $i <= $pagina + $exibir; $i++){
							if($i <= $totalpagina)
								echo "<li class='pg rd'><a href='?pagina=".$i."&nome_categoria=".$nome_categoria."'> ".$i." </a></li> ";
							}/*Loop que imprime as páginas posteriores à atual.*/
						
						echo "<li class='pg rd'><a href='?pagina=".$posterior."&nome_categoria=".$nome_categoria."'>>></a></li> ";
						echo"<li class='pg rd'><a href='?pagina=".$totalpagina."&nome_categoria=".$nome_categoria."'> Última</a></li>";
						?>
						</ul>
					</nav>
					</td>
					</tr>
					</table>
					</div>
			</div>
		</div><!-- col-lg-7.. xs-12 -->
		
		<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 pad-lg">
			<div class="fixo">
				<div class="row">
					<div class='col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10 col-sm-offset-1 col-sm-10 col-xs-offset-1 col-xs-10'>
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
							}/*Escrevendo todos os 5 links que possuem o maior número de visualizações*/
						?>					
						</div>
					</div>
				</div>
				<div class="row">
					<img src="../img/anuncio-quadrado.png" class="center-block hidden-xs aq"/>
				</div>
			</div>
		</div>
	</div><!-- row -->
</div>
<?php 
}
else{
	echo"<script>
            alert('Página Não Encontrada. Retornando à Home');
            window.location = '../base/index.php';
        </script>";
}
include"../base/rodape.php"; 
?>