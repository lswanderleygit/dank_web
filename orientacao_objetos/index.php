<?php

	class Pessoa{

		private $nome = 'Lucass';
		private $idade = '23';
		private $peso = '67kg';

		public function crescer(){
			$this->comer();
			echo 'estou crescendo<br />';
		}


		private function comer(){
			echo 'estou comendo<br />';
		}
	}


	$pessoa = new Pessoa;
	$pessoa2 = new Pessoa;

	$pessoa->crescer();

 ?>
