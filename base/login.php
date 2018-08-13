<?php

    include "../base/conexao.php";

    if(isset($_POST['email'])){
        $email = $_POST['email'];
        $senha = $_POST['senha'];

        $sql = "select * from usuario where email = '$email' and senha = '$senha'";
        $testelogin = mysqli_query($conexao,$sql) or die (mysqli_error($conexao));

        //verifica o numero de linhas que encontrou no teste do login
        $existe = mysqli_num_rows($testelogin);

        if($existe){
            $exibe = mysqli_fetch_array($testelogin);
            
            session_start();
            $_SESSION['email'] = $email;
			$_SESSION['nome'] = $exibe['nome'];
			$_SESSION['foto'] = $exibe['foto'];
			$_SESSION['id_usuario'] = $exibe['id_usuario'];
			
            $nivel = $exibe['nivel'];
			$_SESSION['nivel'] = $nivel;
            
            if($nivel=='adm'){
                header('location: ../base/adm.php');
            }
            else if($nivel=='visitante'){
                header('location: ../base/index.php');
            }
            else{
               $msg = "<script>alert('Ocorreu um Erro desconhecido. Por Favor Tente Novamente mais Tarde.');
			history.go(-1);
			</script>";
            }
           
        }
        else{
            $msg = "<script>alert('Acesso Negado. Usuário ou Senha Inválidos');
			history.go(-1);
			</script>";
        }
    }
    else{
        $msg = "<script>alert('Página Não Encontrada ou Removida. Retornando para a Página Inicial');
			history.go(-1);
			</script>";
    }
	echo $msg;
?>