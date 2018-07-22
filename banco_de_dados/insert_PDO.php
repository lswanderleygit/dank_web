<?php 
	date_default_timezone_set('America/Sao_Paulo');
	$pdo = new PDO('mysql:host=localhost;dbname=modulo_8', 'root', '');

	if(isset($_POST['acao'])){
		$nome = $_POST['nome'];
		$sobrenome = $_POST['sobrenome'];
		$momento_registro = date('Y-m-d H:i:s');
		
		$sql = $pdo->prepare("INSERT INTO `clientes` VALUES (null,?,?,?)");
		$sql->execute(array($nome,$sobrenome,$momento_registro));
		echo 'Cliente inserido com sucesso!';
	}


 ?>


 <!DOCTYPE html>
 <html>
 <head>
 	<title>Cadastro no banco de dados</title>
 </head>
 <body>
 
 	<form method="POST">
 		Nome:
 		<input type="text" name="nome" required style="display: block; margin: 0 0 5px 0"/>
 		Sobrenome:
 		<input type="text" name="sobrenome" required style="display: block; margin: 0 0 5px 0"/>
 		<!-- Data e Hora:
 		<input type="datetime-local" name="momento_registro" required style="display: block; margin: 0 0 5px 0"/> -->
 		<input type="submit" name="acao" value="Enviar" style="display: block; width: ">
 	</form>
 </body>
 </html>