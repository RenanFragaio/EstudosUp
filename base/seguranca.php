<?php

if(!isset($_SESSION)){
    session_start();
}
if(!isset($_SESSION['nome'])){
    
    echo "
        <script>
            alert('Área restrita a usuários logados. Informe seu Usuario e Senha.');
            window.location = '../base/pagina_login.php';
        </script>
        ";
}

?>