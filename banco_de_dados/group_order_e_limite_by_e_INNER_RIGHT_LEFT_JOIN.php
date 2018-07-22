<?php 

	$pdo = new PDO('mysql:host=localhost;dbname=db_teste', 'root', '');
	/*
	$sql = $pdo->prepare("SELECT * FROM `clientes` GROUP BY  cargo ORDER BY nome ASC LIMIT 3");
	$sql->execute();
	$clientes = $sql->fetchAll();
	foreach ($clientes as $key => $value) {
		
		echo $value['nome'];
		echo '<hr>';
	}
	*/

	/*
		* LEFT - Retorna tudo dos clientes mesmo que o cargo estiver vazio
		* RIGHT - Retorna cargos indepententes se o cliente está sem cargo
		* INNER - Retorna o cliente que tem cargo ..
	*/

	$sql = $pdo->prepare("SELECT * FROM `clientes` INNER JOIN cargos ON `clientes`.`cargo` = `cargos`.`id`");
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$sql->execute();
	$clientes = $sql->fetchAll();
	foreach ($clientes as $key => $value) {
		echo $value['nome']. ' | ';
		echo $value['nome_cargo'];
		echo '<hr>';
	}

 ?>