<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    <style>
        
    </style>
</head>
<body>
  <h1>Login de Funcionários</h1>

  <form action="logar.php" method="post">
    <label>Usuário</label>
    <input type="text" name="usuario" required>

    <label>Senha</label>
    <input type="password" name="senha_funcionario" required>

    <center>
      <button type="submit">Login</button>
    </center>
  </form>  
</body>
</html>
