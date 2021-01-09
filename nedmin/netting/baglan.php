<?php 



//Çoklu Dil Mantığı if/else



//$_SESSION['tr'];

//veya

////$_SESSION['eng'];



try {



	$db=new PDO("mysql:host=localhost;dbname=c2c;charset=utf8",'root','');

	echo "veritabanı bağlantısı başarılı";

}



catch (PDOException $e) {



	echo $e->getMessage();

}





 ?>