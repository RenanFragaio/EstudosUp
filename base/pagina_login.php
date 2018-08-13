<?php 
include"../base/controle.php"; 
?>
	<div class="container-fluid">
		
		<form name="login" method="post" action="login.php">
		<!-- area de campos do form-->
		
		<div class="row bg-branco">
			
			<h3 class="page-header text-center">Página de Login</h3>
			
			<div class="col-lg-offset-4 col-lg-4 col-md-offset-4 col-md-4 col-sm-offset-3 col-sm-6 col-xs-offset-1 col-xs-10">
				<div class="row">
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" class="form-control" name="email" required />
					</div>
				</div>
			
				<div class="row">
					<div class="form-group">
						<label for="senha">Senha:</label>
						<input type="password" class="form-control" name="senha" required />
					</div>
				</div>
				<div class="row">
					<div class="form-group">
						<button type="submit" class="btn btn-success btn-block">Entrar</button>
					</div>
				</div>
				<div class="row">
					<!--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">-->
					<div class="pad">
						<a href="../usuario/cadastrar_usuario.php" class="btn btn-primary btn-block">Cadastre-se</a> 
					</div>
					<!--</div>-->
				</div>
				<div class="row">
					<!--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 pad-top pad-bottom">-->
					<div class="pad pad-bottom">
						<a class="btn btn-primary btn-block" href="../base/esqueci_senha">Esqueceu sua Senha?</a>
					</div>
					<!--</div>-->
					</form>
				</div>
			</div><!-- col -->
		</div><!-- row -->
			
	</div><!--container-fluid-->
		<?php include"../base/rodape.php"; ?>