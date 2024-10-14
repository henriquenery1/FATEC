<?php
session_start();

// Verifica se o usuário está logado
if (!isset($_SESSION['nome'])) {
    header("Location: login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dados do Funcionário</title>
    <link href="style_perfil.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="profile">
                <img src="sua-foto.jpg" alt="Bem Vindo(a)" class="profile-pic">
                <h2><?php echo $_SESSION['nome']; ?></h2>
                <button onclick="toggleProfile()">Perfil</button>
            </div>
        </aside>

        <main class="main-content" id="main-content">
            <h1>Dados do Funcionário</h1>
            <div class="info">
                <p><strong>Nome:</strong> <?php echo $_SESSION['nome']; ?></p>
                <p><strong>Registro:</strong> <?php echo $_SESSION['registro']; ?></p>
                <p><strong>Data de Admissão:</strong> <?php echo $_SESSION['admissao']; ?></p>
                <p><strong>Cargo:</strong> <?php echo $_SESSION['cargo']; ?></p>
                <p><strong>Quantidade de Salários:</strong> <?php echo $_SESSION['qtde_salarios']; ?></p>
                <p><strong>Salário Bruto:</strong> R$ <?php echo number_format($_SESSION['salario_bruto'], 2, ',', '.'); ?></p>
                <p><strong>INSS:</strong> R$ <?php echo number_format($_SESSION['inss'], 2, ',', '.'); ?></p>
                <p><strong>Salário Líquido:</strong> R$ <?php echo number_format($_SESSION['salario_liquido'], 2, ',', '.'); ?></p>
            </div>
            <a href="login.php">Sair</a>
        </main>
    </div>

    <script>
        function toggleProfile() {
            const mainContent = document.getElementById('main-content');
            mainContent.classList.toggle('show-profile');
        }
    </script>
</body>
</html>
