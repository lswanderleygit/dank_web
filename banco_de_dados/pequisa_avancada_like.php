<?php

    $pdo = new PDO('mysql:host=localhost;dbname=testes', 'root', '');

    // $sql = $pdo->prepare("SELECT * FROM clientes WHERE email LIKE '%g%'");
    $sql = $pdo->prepare("SELECT * FROM clientes WHERE data BETWEEN '2018-07-05' AND '2018-07-15'");

    $sql->execute();

    $clientes = $sql->fetchAll();

    foreach ($clientes as $key => $value) {
        echo $value['data']; 
        echo"<hr>";
    }

//    echo '<pre>';
//    print_r($clientes);
//    echo '</pre>';

?>