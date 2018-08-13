<?php

    /*$local = "mysql.hostinger.com.br";
    $usuario = "u267040773_root";
    $senha = "123456";
    $banco = "u267040773_oscar";*/
	
	$local = "localhost";
	$usuario = "root";
	$senha = "";
	$banco = "estudosup";

    $conexao = mysqli_connect($local,$usuario,$senha,$banco);

 //   echo "Banco de dados OK";

	header("Content-type: text/html; charset=utf-8");
	mysqli_query($conexao,"SET NAMES 'utf8'");
	mysqli_query($conexao,"SET caracter_set_connection = utf8");
	mysqli_query($conexao,"SET caracter_set_client = utf8");
	mysqli_query($conexao,"SET caracter_set_results = utf8");
?>