<?php

ob_start();
session_start();

include 'baglan.php';
include '../production/fonksiyon.php';

if (isset($_POST['logoduzenle'])) {

	
	


	
	if ($_FILES['ayar_logo']['size']>1048576) {
		
		echo "Bu dosya boyutu çok büyük";

		Header("Location:../production/genel-ayar.php?durum=dosyabuyuk");

	}


	$izinli_uzantilar=array('jpg','png');

	//echo $_FILES['ayar_logo']["name"];

	$ext=strtolower(substr($_FILES['ayar_logo']["name"],strpos($_FILES['ayar_logo']["name"],'.')+1));

	if (in_array($ext, $izinli_uzantilar) === false) {
		echo "Bu uzantı kabul edilmiyor";
		Header("Location:../production/genel-ayar.php?durum=formathata");

		exit;
	}


	$uploads_dir = '../../dimg';

	@$tmp_name = $_FILES['ayar_logo']["tmp_name"];
	@$name = $_FILES['ayar_logo']["name"];

	$benzersizsayi4=rand(20000,32000);
	$refimgyol=substr($uploads_dir, 6)."/".$benzersizsayi4.$name;

	@move_uploaded_file($tmp_name, "$uploads_dir/$benzersizsayi4$name");

	
	$duzenle=$db->prepare("UPDATE ayar SET
		ayar_logo=:logo
		WHERE ayar_id=0");
	$update=$duzenle->execute(array(
		'logo' => $refimgyol
	));



	if ($update) {

		$resimsilunlink=$_POST['eski_yol'];
		unlink("../../$resimsilunlink");

		Header("Location:../production/genel-ayar.php?durum=ok");

	} else {

		Header("Location:../production/genel-ayar.php?durum=no");
	}

}
?>