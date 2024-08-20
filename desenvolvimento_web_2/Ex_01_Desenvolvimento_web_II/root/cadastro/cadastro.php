<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Funcionários</title>
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
      <option value="Estagiário">Estagiario</option>
      <option value="Desenvolvedor">Desenvolvedor</option>
      <option value="Rapaz(riga) do café">Barista</option>
      <option value="muié da limpeza">Tia da limpeza</option>
      <option value="Professor">Professor(a)</option>
      <option value="Médico">Médico(a)</option>
    </select>

    <label>Quantidade de salários minímos</label>
      <input type="number" name="qtd_salarios_min">
      <button type="submit">Cadastrar</button>

  </form>  
</body>
</html>