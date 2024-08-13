<?php

include 'conexao.php';

$usuario = $_POST['txt_usuario'];
$email = $_POST['txt_email'];
$senha = $_POST['txt_senha'];

$sql = mysql_query ("SELECT * FROM tb_cadastro
                    WHERE usuario - '$usuario' 
                    OR email = '$email'");

if (mysql_num_rows($sql) > 0) {
    echo "<center><h1> O usuario ou e-mail ja existe </h1></center>";
} else {
    mysql_query ("INSERT INTO tb_cadastro (usuario, email, senha) VALUES ('$usuario', '$email', '$senha')");
    echo "<center><h1> O usuario foi cadastrado </h1></center>";
}

?>