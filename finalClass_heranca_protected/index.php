<?php 

	class Filha{

		// protected function funcaoTeste(){
		// 	echo 'chamando funcao teste';
		// }

		public function printOla(){
			echo 'Ola mundo';
		}
	}

	class Pai extends Filha{

		public function mostrarTchau(){
			echo 'Tchau Mundo!<br>';
			$this->funcaoTeste();
		}
	}

	$pai = new Pai;

	$pai->mostrarTchau();


	echo '<br>';


	// $filha = new Filha;
	// $filha->printOla();


 ?>