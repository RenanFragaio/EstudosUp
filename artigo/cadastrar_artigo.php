<?php 
include"../base/seguranca_adm.php";
include"../base/conexao.php";
include"../base/controle.php"; 

/* conta quantas linhas de registro = numero de categorias */
$sql = "select * from categoria";
$seleciona = mysqli_query($conexao,$sql);

$n_categoria = mysqli_num_rows($seleciona);

?>
<div class="conteiner-fluid">
	<div class="row">
		<div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 col-xs-offset-1 col-xs-10">
			<form name="form" method="post" action="insert_artigo.php" enctype="multipart/form-data">
				<div class="page-header"><font size="5"><b>Cadastrar Artigo</b></font></div>
				<div class="form-group">
					<label for="titulo">Título do Artigo:</label>
					<input type="text" name="titulo" class="form-control" maxlength="80" required />
				</div>
				<div class="form-group">
					<label for="subtitulo">Subtítulo, Introdução ou Descrição rápida (opcional):</label>
					<textarea name="subtitulo" maxlength="255" class="form-control" ></textarea>
				</div>
				<div class="form-group">
					<label for="categoria">Categoria:</label>
					<select class='form-control' name="nome_categoria" required>
						<?php
							while($dados = mysqli_fetch_array($seleciona)){
								echo"<option>".$dados['nome_categoria']."</option>";
							}
						?>
					</select><br />
					<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Criar Nova Categoria</button>
					
						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
							<div class="modal-content">
							  <div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="myModalLabel">Sair do cadastro de artigos</h4>
							  </div>
							  <div class="modal-body">
								Tem certeza de que deseja sair desta página? Dados não salvos serão perdidos.
							  </div>
							  <div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
								<a href="../categoria/cadastrar_categoria.php" class="btn btn-primary" >Sim</a>
							  </div>
							</div>
						  </div>
						</div>
					<?php 	switch ($n_categoria){
								case "":
								echo "Não existem Categorias";
								default:
								echo "";
								}
					?>
				</div>
				<div class="form-group">
					<label for="texto">Texto:</label>
					<textarea name="texto" class="form-control" rows="10" required></textarea>
					<br/><b>!!Escolhas Opcionais:</b><br/><br/>
					<b>Para Digitar trechos em negrito</b>, Digite o trecho entre os símbolos <b>&lt;b&gt;</b>(menor que, b e maior que) e <b>&lt;/b&gt;</b>(menor que, b, barra e maior que)<br/>
					Faça da seguinte maneira:<br/>
					Eu não estarei em negrito, mas <b>&lt;b&gt; eu estarei em negrito&lt;/b&gt;</b>
					<br/><br/>
					<b>Para Digitar trechos sublinhados</b>, Digite o trecho entre os símbolos <b>&lt;u&gt;</b>(menor que, u e maior que) e <b>&lt;/u&gt;</b>(menor que, u, barra e maior que)<br/>
					Faça da seguinte maneira:<br/>
					Eu não estarei sublinhado, mas <u>&lt;u&gt; eu estarei sublinhado&lt;/u&gt;</u><br/><br/>
				</div>
				<div class="form-group">
					<label for="imagem" >Imagem: &nbsp; &nbsp; (Servirá como ícone clicável na homepage e nas listas)</label>
					<input type="file" name="imagem" class="form-control" required />
				</div>
				<div class="form-group">
						<label for="visivel">A Imagem Será Visível no Artigo? &nbsp; &nbsp; (Se não for será apenas um ícone para links)</label>
						<select class="form-control" name="visivel">
							<option>Sim</option>
							<option>Não</option>
						</select>
						<!-- addon do bootstrap com comentários -->
					<br/><b>!! Não é recomendado o uso de imagens redondas/circulares</b><br/><br/>
					<b>!! Recomenda-se imagens retangulares com comprimento não muito maior que a altura.</b>
				</div>
					<!-- recebendo a data em que o artigo será publicado -->
					<input type="hidden" name="data_pub" value="<?php date_default_timezone_set('America/Sao_Paulo'); echo date("Y/m/d - H:i");?>">
					
				<button type="submit" class="btn btn-primary">Cadastrar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
				<a href="../artigo/lista_artigo.php" class="btn btn-default">Voltar</a>
			</form>
		</div>
	</div>
</div>
<?php include"../base/rodape.php";?>