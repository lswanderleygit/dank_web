<?php  

    $pdo = new PDO('mysql:host=localhost;dbname=db_testes', 'root', '');

    $pdo->exec("LOCK TABLES `tb_admin.usuarios` WRITE");

    sleep(10);


?>