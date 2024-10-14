<?php
session_start();

include 'conexao.php';

$usuario = $_POST['usuario'];
$senha = $_POST['senha_funcionario'];

$sql = mysql_query("SELECT * FROM funcionarios WHERE nome = '$usuario' AND senha_funcionario = '$senha'");

if (mysql_num_rows($sql) == 0) {
    echo "
    <script>
    alert('Usuário ou senha incorretos'); 
    window.location.href = 'login.php';
    </script>";
} else {
    $usuario = mysql_fetch_assoc($sql);

    // Verifica se o usuário está ativo
    if ($usuario['ativo'] == 0) {
        echo "
        <script>
        alert('Usuário inativo. Contate o administrador.'); 
        window.location.href = 'login.php';
        </script>";
        exit();
    }

    $_SESSION['nome'] = $usuario['nome'];
    $_SESSION['registro'] = $usuario['registro'];
    $_SESSION['admissao'] = $usuario['data_admissao'];
    $_SESSION['cargo'] = $usuario['cargo'];
    $_SESSION['qtde_salarios'] = $usuario['qtde_salarios'];
    $_SESSION['salario_bruto'] = $usuario['salario_bruto'];
    $_SESSION['inss'] = $usuario['inss'];
    $_SESSION['salario_liquido'] = $usuario['salario_liquido'];

    header("Location: dados.php");
    exit();
}
?>
