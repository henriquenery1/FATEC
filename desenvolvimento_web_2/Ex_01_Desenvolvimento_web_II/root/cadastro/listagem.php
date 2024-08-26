<?php

include 'conexao.php';

if(isset($_POST['busca_nome']) != '') {
	$sql = mysql_query("select * from funcionarios where nome like  '{$_POST['busca_nome']}%' order by nome asc");
} else {
	$sql = mysql_query("select * from funcionarios order by nome asc");
}


if(isset($_GET['apagar'])){
	$sql = mysql_query("delete from funcionarios where nome=". $_GET['apagar']);
	 echo "<br>";
	 echo "<center>";
	 echo "<hr>";
	 echo "USUARIO EXCLUIDO COM SUCESSO!!!";
	 echo "<br>";
	 echo "<br>";
	 echo "<a href=\"listagem.php\">VOLTAR</a>"; 
	 echo "<hr>";
	return false;
}

?>

<html>
<body>	  
<center>
<form name="form1" method="POST" action="listagem.php">
DIGITE UM USUARIO: <input type="text" name="busca_nome"><input type="submit" value="FILTRAR">
</form>


<table border="1" align="center">
		    <tr>
			<th colspan="9e" bgcolor="darkblue">LISTAGEM DE CONTAS CADASTRADAS</th>
			</tr>

			<th bgcolor="red">Registro</th>
			<th bgcolor="red">Nome</th>
			<th bgcolor="red">Data de admissao</th>
			<th bgcolor="red">Cargo</th>
			<th bgcolor="red">Quantidade salario minimos</th>
			<th bgcolor="red">INSS</th>
			<th bgcolor="red">Salario bruto</th>
			<th bgcolor="red">Salario liquido</th>
			<th bgcolor="red">APAGAR</th>
			</tr>

			<tr>
			<?php
				while($linha = mysql_fetch_assoc($sql)) {
			?>
			<td align="center"><?php echo $linha['registro']; ?></td>
			<td align="center"><?php echo $linha['nome']; ?></td>
			<td align="center"><?php echo $linha['data_admissao']; ?></td>
			<td align="center"><?php echo $linha['cargo']; ?></td>

			<td align="center"><?php echo $linha['qtde_salarios']; ?></td>
			<td align="center"><?php echo $linha['inss']; ?></td>
			<td align="center"><?php echo $linha['salario_bruto']; ?></td>
			<td align="center"><?php echo $linha['salario_liquido']; ?></td>


	       <th><a href="listagem.php?apagar='<?php echo $linha['nome']; ?>'">APAGAR</a></th>
           </tr>

            			
			<?php  } 
			  
			  echo "<br>";
			  echo "<center>";
			  echo "<hr>";
		      echo "<a href=\"cadastro.php\">VOLTAR PARA O CADASTRO</a>"; 
			  echo "<hr>";
			?>
</table>
</body>
</html>





