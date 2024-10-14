<?php

include 'conexao.php';

$nome_funcionario = $_POST['nome_funcionario'];
$data_admissao = $_POST['data_admissao'];
$cargo = $_POST['cargos'];
$qts_salarios_min = $_POST['qtd_salarios_min'];
$senha = $_POST['senha_funcionario'];

$salario_min=1412;
$salario_bruto = $qts_salarios_min * $salario_min;

if ($salario_bruto>1550){
    $inss=$salario_bruto-($salario_bruto*0.89);
    $salario_liquido=$salario_bruto-$inss;
} else {
    $salario_liquido=$salario_bruto;
    $inss = 0;
}

    mysql_query ("INSERT INTO funcionarios (nome, data_admissao, cargo, qtde_salarios, salario_bruto, inss, salario_liquido, senha_funcionario) VALUES ('$nome_funcionario', '$data_admissao', '$cargo', '$qts_salarios_min','$salario_bruto','$inss','$salario_liquido','$senha')");
    header('Location: login.php');
    exit();
?>
