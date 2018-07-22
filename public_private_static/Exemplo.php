<?php 

	/**
	 * 
	 */
	class Exemplo{
		
		private $var1;
		public $var2;
/*
		public static $var3 = 'statico<br>';

		public function metodo(){
			echo 'Metodo 1<br>';
		}

		public static function metodoStatico(){
			echo '<br>Metodo estatico';
		}

		private function metodo2(){
			echo 'Metodo 2<br>';

		}
*/
		public function setVar1($var1){
			$this->var1 = $var1;
			return $this->$var1;
		}

	}


 ?>