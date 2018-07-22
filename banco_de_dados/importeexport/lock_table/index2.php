<?php  
    $pdo = new PDO('mysql:host=localhost;dbname=db_testes', 'root', '');

   $sql = $pdo->prepare("SELECT * FROM `tb_admin.usuarios`");

    $sql ->execute();

    $usuarios = $sql->fetchAll();

    foreach ($usuarios as $key => $value) {
        echo $value['nome'];
        echo '<hr>';
    }


?>