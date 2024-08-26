<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Funcionários</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>

<body>
  <h1>Cadastro de funcionários</h1>

  <form action="sla.php" method="post">
  <h2>Dados do Funcionário</h2>
      
    <label>Nome do Funcionário</label>
      <input type="text" name="nome_funcionario" required>

    <label>Data de Admissão</label>
      <input type="date"name="data_admissao" required>

    <label>Cargo</label>
    <select name="cargos" required> 
      <option value="Estagiario">Estagiario</option>
      <option value="Desenvolvedor">Desenvolvedor</option>
      <option value="Rapaz(riga) do cafe">Barista</option>
      <option value="muie da limpeza">Tia da limpeza</option>
      <option value="Professor">Professor(a)</option>
      <option value="Medico">Médico(a)</option>
    </select>

    <label>Quantidade de salários minímos</label>
      <input type="number" name="qtd_salarios_min">
      <button type="submit">Cadastrar</button>

  </form>  

  <center>
      <h1><a href="listagem.php">LISTA</a></h1>
  </center>
</body>
</html>