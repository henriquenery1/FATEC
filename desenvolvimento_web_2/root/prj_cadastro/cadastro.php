<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Cadastro e Login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="form-container">
        <h1>Cadastro de contas</h1>

        <form name="form1" method="post" class="cadastro">
            <div class="form-group">
                <label for="username">Usuário:</label>
                <input type="text" id="username" name="txt_usuario" required>
            </div>
            
            <div class="form-group">
                <label for="email">E-mail:</label>
                <input type="email" id="email" name="txt_email" required>
            </div>

            <div class="form-group">
                <label for="password">Senha:</label>
                <input type="password" id="password" name="txt_senha" required>
            </div>

            <div class="form-group btn-group">
                <input type="submit" class="btn-register" value="Cadastrar" onclick="document.form1.action='cadastrar.php'">

                <input type="submit" class="btn-login" value="Login" onclick="document.form1.action='login.php'">
            </div>

        </form>
    </div>
</body>
</html>
