<?php 
	
	$pdo = new PDO('mysql:host=localhost;dbname=modulo_8', 'root', '');

	$id = 3;

	$sql = $pdo->prepare("UPDATE `clientes` SET nome='Mario', sobrenome='da Silva' WHERE id=$id");

	if($sql->execute()){
		echo 'Meu cliente foi atualizado com sucesso!';
	}

 ?>