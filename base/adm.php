<?php
include"../base/controle.php";
?>
<div class="container-fluid">
	<div class="row bg-branco pad-bottom text-center">
	
		<h2 class="page-header b-header">Administração do Site</h2>
			
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="row">
				<div class="col-lg-10 col-md-11 col-sm-7 col-xs-8 col-centered">
					<a href="../artigo/lista_artigo.php" class="sem-linha">
						<div class="panel panel-primary icone-adm azul center-block">
							<div class="panel-body bg-branco">
								<img class="img-responsive img-icone center-block" src="../img/folha-escrita.png"/>
							</div>
							<div class="panel-footer link-adm">
								Gerenciar Artigos
							</div>							
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="row">
				<div class="col-lg-10 col-md-11 col-sm-7 col-xs-8 col-centered">
					<a href="../artigo/cadastrar_artigo.php" class="sem-linha">
						<div class="panel icone-adm verde center-block">
							<div class="panel-body bg-branco">
								<img class="img-responsive img-icone center-block" src="../img/novo-artigo.png"/>
							</div>
							<div class="panel-footer link-adm">
								Novo Artigo
							</div>							
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="row">
				<div class="col-lg-10 col-md-11 col-sm-7 col-xs-8 col-centered">
					<a href="../usuario/lista_usuario.php" class="sem-linha">
						<div class="panel icone-adm azul center-block">
							<div class="panel-body bg-branco">
								<img class="img-responsive img-icone center-block" src="../img/editar-usuario.png"/>
							</div>
							<div class="panel-footer link-adm">
								Gerenciar Usuários
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="row">
				<div class="col-lg-10 col-md-11 col-sm-7 col-xs-8 col-centered">
					<a href="../usuario/cadastrar_usuario.php?nivel=adm" class="sem-linha">
						<div class="panel icone-adm verde center-block">
							<div class="panel-body bg-branco">
								<img class="img-responsive img-icone center-block" src="../img/novo-usuario.png"/>
							</div>
							<div class="panel-footer link-adm">
								Novo Usuário
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="row">
				<div class="col-lg-10 col-md-11 col-sm-7 col-xs-8 col-centered">
					<a href="../categoria/lista_categoria.php" class="sem-linha">
						<div class="panel icone-adm azul center-block">
							<div class="panel-body bg-branco">
								<img class="img-responsive img-icone center-block" src="../img/pasta.png"/>
							</div>
							<div class="panel-footer link-adm">
								Gerenciar categorias
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="row">
				<div class="col-lg-10 col-md-11 col-sm-7 col-xs-8 col-centered">
					<a href="../categoria/cadastrar_categoria.php" class="sem-linha">
						<div class="panel icone-adm verde center-block">
							<div class="panel-body bg-branco">
								<img class="img-responsive img-icone center-block" src="../img/pasta-plus.png"/>
							</div>
							<div class="panel-footer link-adm">
								Nova Categoria
							</div>
						</div>
					</a>
				</div>
			</div>
	</div>
</div>

<?php include"../base/rodape.php"; ?>