<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cadastro de Funcionários</title>
  <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


  <style>

  </style>
</head>

<body>
  <h1>Cadastro de Funcionários</h1>

  <form action="sla.php" method="post">
    <h2>Dados do Funcionário</h2>

    <label>Nome do Funcionário</label>
    <input type="text" name="nome_funcionario" required>

    <label>Data de Admissão</label>
    <input type="date" name="data_admissao" required>

    <label>Cargo</label>
    <select name="cargos" required>
      <option value="Estagiario">Estagiário</option>
      <option value="Desenvolvedor">Desenvolvedor</option>
      <option value="Barista">Barista</option>
      <option value="Tia da limpeza">Tia da limpeza</option>
      <option value="Professor(a)">Professor(a)</option>
      <option value="Médico(a)">Médico(a)</option>
    </select>

    <label>Quantidade de salários mínimos</label>
    <input type="number" name="qtd_salarios_min" min="0" step="0.01">
    <label>Senha</label>
    <input type="password" name="senha_funcionario" required>
    <!--
<div class="input-group mb-3">
      <input type="password" class="form-control" placeholder="Recipient's username"  aria-label="Recipient's username" aria-describedby="button-addon2">
      <div class="input-group-append">
        <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
      </div>
</div>
-->


    <center>
      <button type="submit">Cadastrar</button> 
    </center>


  </form>

  <div class="centered">
    <h1><a href="listagem.php">LISTA</a></h1>
  </div>
</body>

</html>
