<?php

include"conexao.php";

if(isset($_POST['email1'])){
$email1 = $_POST['email1'];
$email2 = $_POST['email2'];

	if($email1==$email2){
		$sql = "select email from usuario where email='$email2'";
			
		$verifica = mysqli_query($conexao,$sql);
			
		$rows = mysqli_num_rows($verifica);
			
			
			if($rows==1){
				
				$sql = "select senha from usuario where email='$email'";
				
				$senha = mysqli_query($conexao,$sql);
				$dados = mysqli_fetch_array($senha);    
				
				$destinatario = $email;
				$assunto = "Solicitação de Recuperação da senha do usuário";
				$mensagem="<p><strong>Esta é uma mensagem automática, não necessita ser respondida.</strong></p><p> A senha deste usuário é " . $dados['senha'] . ". Você pode usá-la para alterar sua senha depois de logado.</p>";
				$remetente ="Página de EstudosUp.php";
				
					if(mail($destinatario,$assunto,$mensagem,$remetente)){
						echo"<script>
						alert('Mensagem enviada com Sucesso!!!');
						window.location = 'index.php';
						</script>";
					}
					else{
						echo"<script>
						alert('Problema no envio do email. Por favor tente novamente mais tarde.');
						history.go(-1);
						</script>";
					}
			}    
			else if($rows==0){
				echo"<script>
				alert('Este email não está cadastrado em nenhum usuário. Por Favor Verifique se digitou o email corretamente.');
				history.go(-1);
				</script>";
				
			}
			else{
			echo"<script>
				alert('Erro na verificação do email. Tente novamente mais tarde ou contate o administrador do site');
				history.go(-1);
				</script>";
			}
		}
		else{
			echo"<script>
            alert('Os Emails Digitados Não Coincidem');
            history.go(-1);
			</script>";
		}
	}
else{
       echo "<script>
           alert('Página Não Encontrada ou Removida. Retornando à Página de Login.');
           window.location = '../base/pagina_login.php';
        </script>;";
}
?>