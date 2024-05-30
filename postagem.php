<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $titulo = $_POST['titulo'];
    $conteudo = $_POST['conteudo'];
    $midia = $_FILES['midia']['name'];
    $midia_temp = $_FILES['midia']['tmp_name'];
    $youtube = $_POST['youtube'];

    if (!empty($midia)) {
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($midia);
        move_uploaded_file($midia_temp, $target_file);
    } else {
        $target_file = null;
    }
include('config/database.php');

    // Enviar a postagem para o grupo do Telegram
    $botToken = "TOKEN DO BOT AQUI";
    $chatId = "ID DO GRUPO AQUI";
    $message = $titulo . "\n\n" . $conteudo;

    if ($youtube) {
        $message .= "\n\nAssista o vídeo: " . $youtube;
    }

    $url = "https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=" . urlencode($message);

    if ($target_file) {
        $url = "https://api.telegram.org/bot$botToken/sendPhoto";
        $post_fields = [
            'chat_id' => $chatId,
            'caption' => $message,
            'photo' => new CURLFile(realpath($target_file))
        ];

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "Content-Type:multipart/form-data"
        ));
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_fields);
        $output = curl_exec($ch);
        curl_close($ch);
    } else {
        file_get_contents($url);
    }

    echo "Postagem enviada com sucesso!";
}
?>
