<?php
// Conectar ao banco de dados
    $conn = new mysqli('localhost', 'root', '', 'sistema_postagem');

    // Verificar a conexão
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Inserir a postagem no banco de dados
    $stmt = $conn->prepare("INSERT INTO postagens (titulo, conteudo, midia, youtube) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $titulo, $conteudo, $target_file, $youtube);
    $stmt->execute();
    $stmt->close();
    $conn->close();


?>