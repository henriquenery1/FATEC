<?php

include 'conexao.php';

$nome_funcionario = $_POST['nome_funcionario'];
$data_admissao = $_POST['data_admissao'];
$cargo = $_POST['cargos'];
$qts_salarios_min = $_POST['qtd_salarios_min'];

$salario_min=1412;
$salario_bruto = $qts_salarios_min * $salario_min;
$inss=$salario_bruto-($salario_bruto*0.89);

if ($salario_bruto>1550){
    $salario_liquido=$salario_bruto*0.89;
}


    mysql_query ("INSERT INTO funcionarios (nome, data_admissao, cargo, qtde_salarios, salario_bruto, inss, salario_liquido) VALUES ('$nome_funcionario', '$data_admissao', '$cargo', '$qts_salarios_min','$salario_bruto','$inss','$salario_liquido')");


?>