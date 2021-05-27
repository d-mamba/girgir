<?php

include 'baglan.php';
include '../production/fonksiyon.php';

// KULLANICI KAYIT İŞLEMLERİ
if (isset($_POST['kullanicikaydet'])) {

    // xss açığı ve script saldırılarına karşı: htmlspecialchars
    // sağında solunda boşlukları yok ediyor: trim


    $kullanici_mail = htmlspecialchars(trim($_POST['kullanici_mail']));

    $kullanici_passwordone = htmlspecialchars(trim($_POST['kullanici_passwordone']));
    $kullanici_passwordtwo = htmlspecialchars(trim($_POST['kullanici_passwordtwo']));

    if ($kullanici_passwordone == $kullanici_passwordtwo) {


        if (strlen($kullanici_passwordone) >= 6) {


            $kullanicisor = $db->prepare("select * from kullanici where kullanici_mail=:mail");
            $kullanicisor->execute(array(
                'mail' => $kullanici_mail
            ));

            //dönen satır sayısını belirtir
            $say = $kullanicisor->rowCount();



            if ($say == 0) {

                //md5 fonksiyonu şifreyi md5 şifreli hale getirir.
                $password = md5($kullanici_passwordone);

                $kullanici_yetki = 1;

                //Kullanıcı kayıt işlemi yapılıyor...
                $kullanicikaydet = $db->prepare("INSERT INTO kullanici SET
					kullanici_ad=:kullanici_ad,
                    kullanici_soyad=:kullanici_soyad,
					kullanici_mail=:kullanici_mail,
					kullanici_password=:kullanici_password,
					kullanici_yetki=:kullanici_yetki,
                    kullanici_cinsiyet=:kullanici_cinsiyet
					");
                $insert = $kullanicikaydet->execute(array(
                    'kullanici_ad' => htmlspecialchars($_POST['kullanici_ad']),
                    'kullanici_soyad' => htmlspecialchars($_POST['kullanici_soyad']),
                    'kullanici_mail' => $kullanici_mail,
                    'kullanici_password' => $password,
                    'kullanici_yetki' => $kullanici_yetki,
                    'kullanici_cinsiyet' => htmlspecialchars($_POST['kullanici_cinsiyet'])
                ));

                if ($insert) {


                    header("Location:../../login ?durum=Kayitbasarili");
                } else {


                    header("Location:../../register?durum=basarisiz");
                }
            } else {

                header("Location:../../register?durum=mukerrerkayit");
            }

            //Bitiş
        } else {

            header("Location: ../../register?durum=eksiksifre");
        }
    } else {
        header("Location: ../../register?durum=farklisifre");
    }
}


if (isset($_POST['kullanicigiris'])) {

    echo $kullanici_mail = htmlspecialchars($_POST['kullanici_mail']);
    echo $kullanici_password = htmlspecialchars(md5($_POST['kullanici_password']));

    $kullanicisor = $db->prepare("SELECT * from kullanici where kullanici_mail=:mail and kullanici_yetki=:yetki and kullanici_password=:password and kullanici_durum=:durum");
    $kullanicisor->execute(array(
        'mail' => $kullanici_mail,
        'yetki' => 1,
        'password' => $kullanici_password,
        'durum' => 1
    ));

    $say = $kullanicisor->rowCount();

    if ($say == 1) {

        $_SESSION['userkullanici_mail'] = $kullanici_mail;

        header("Location:../../index?durum=girisbasarili");
        exit;
    } else {

        header("Location:../../login?durum=hata");
    }
}



if (isset($_POST['kullanicibilgiguncelle'])) {



    $kullaniciguncelle = $db->prepare("UPDATE kullanici SET 
    kullanici_ad=:kullanici_ad,
    kullanici_soyad=:kullanici_soyad
    
    WHERE kullanici_id={$_SESSION['userkullanici_id']}");

    $update = $kullaniciguncelle->execute(array(

        'kullanici_ad' => htmlspecialchars($_POST['kullanici_ad']),
        'kullanici_soyad' => htmlspecialchars($_POST['kullanici_soyad'])
        
    ));

    if ($update) {
        Header("Location:../../hesabim?durum=ok");
    } else {
        Header("Location:../../hesabim?durum=hata");
    }
}


if (isset($_POST['kullanicisifreguncelle'])) {

    $kullanici_eskipassword = htmlspecialchars($_POST['kullanici_eskipassword']);
    $kullanici_passwordone = htmlspecialchars($_POST['kullanici_passwordone']);
    $kullanici_passwordtwo = htmlspecialchars($_POST['kullanici_passwordtwo']);

    $kullanici_password = md5($kullanici_eskipassword);
    $kullanicisor = $db->prepare("select * from kullanici where kullanici_password=:password");
    $kullanicisor->execute(array(

        'password' => $kullanici_password

    ));
    $say = $kullanicisor->rowCount();

    if ($say == 0) {
        header("Location:../../sifre-guncel?durum=eskisifrehata");
        exit;
    }

    if ($kullanici_passwordone == $kullanici_passwordtwo) {

        if (strlen($kullanici_passwordone) >= 6) {

            $sifre = md5($kullanici_passwordone);
            $kullaniciguncelle = $db->prepare("UPDATE kullanici SET 
            kullanici_password=:kullanici_password   
            
            WHERE kullanici_id={$_SESSION['userkullanici_id']}");

            $update = $kullaniciguncelle->execute(array(

                'kullanici_password' => $sifre

            ));

            if ($update) {
                Header("Location:../../sifre-guncel?durum=ok");
            } else {
                Header("Location:../../sifre-guncel?durum=hata");
            }
        } else {
            header("Location:../../sifre-guncel?durum=eksiksifre");
        }
    } else {
        header("Location:../../sifre-guncel?durum=uyumsuzsifre");
    }
}


/*
if (isset($_POST['kullanicifotoekle'])) {




    if ($_FILES['kullanici_foto']['size'] > 5242880) {

        echo "Bu dosya boyutu çok büyük";

        Header("Location:../../hesabim?durum=dosyabuyuk");
    }


    $izinli_uzantilar = array('jpg', 'png');

    //echo $_FILES['ayar_logo']["name"];

    $ext = strtolower(substr($_FILES['kullanici_foto']["name"], strpos($_FILES['kullanici_foto']["name"], '.') + 1));

    if (in_array($ext, $izinli_uzantilar) === false) {
        echo "Bu uzantı kabul edilmiyor";
        Header("Location:../../hesabim?durum=formathata");

        exit;
    }
    @$tmp_name = $_FILES['kullanici_foto']["tmp_name"];
    @$name = $_FILES['kullanici_foto']["name"];

    include('SimpleImage.php');
    $image = new SimpleImage();
    $image ->load($tmp_name);
    $image ->resize(128,128);
    $image ->save($tmp_name);

  


    $uploads_dir = '../../dimg/kullanicifoto';



    $benzersizsayi4 = rand(20000, 32000);
    $refimgyol = substr($uploads_dir, 6) . "/" . $benzersizsayi4 . $name;

    @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizsayi4$name");


    $duzenle = $db->prepare("UPDATE kullanici SET
		kullanici_foto=:kullanici_foto
		WHERE kullanici_id={$_SESSION['userkullanici_id']}");
    $update = $duzenle->execute(array(
        'kullanici_foto' => $refimgyol
    ));



    if ($update) {

        $resimsilunlink = $_POST['eski_yol'];
        unlink("../../$resimsilunlink");

        Header("Location:../../hesabim?durum=ok");
    } else {

        Header("Location:../../hesabim?durum=hata");
    }
}
*/
// ETKİNLİK KUR 


// BURASI
if (isset($_POST['etkinlikkur'])) {




    if ($_FILES['etkinlik_foto']['size'] > 5242880) {

        echo "Bu dosya boyutu çok büyük";

        Header("Location:../../etkinlikkur?durum=dosyabuyuk");
    }


    $izinli_uzantilar = array('jpg', 'png');

    //echo $_FILES['ayar_logo']["name"];

    $ext = strtolower(substr($_FILES['etkinlik_foto']["name"], strpos($_FILES['etkinlik_foto']["name"], '.') + 1));

    if (in_array($ext, $izinli_uzantilar) === false) {
        echo "Bu uzantı kabul edilmiyor";
        Header("Location:../../etkinlikkur?durum=formathata");

        exit;
    }
    
    

    @$tmp_name = $_FILES['etkinlik_foto']["tmp_name"];
    @$name = $_FILES['etkinlik_foto']["name"];

    

    $uploads_dir = '../../dimg/etkinlikfoto';

    $benzersizsayi4 = rand(20000, 32000);
    $refimgyol = substr($uploads_dir, 6) . "/" . $benzersizsayi4 . $name;

    @move_uploaded_file($tmp_name, "$uploads_dir/$benzersizsayi4$name");
    $ref=$_POST['ilce'];
   
    
    $ilcesor2= $db->prepare("SELECT * FROM ilce WHERE ilce_ad=:ilce_ad");
    $ilcesor2->execute([
        'ilce_ad'=>$ref
    ]);
        $row=$ilcesor2->fetch(PDO::FETCH_ASSOC);
       
        

    
    $duzenle = $db->prepare("INSERT INTO etkinlik SET
        etkinlik_baslik=:etkinlik_baslik,
        etkinlik_foto=:etkinlik_foto,
        etkinlik_aciklama=:etkinlik_aciklama,
        il_id=:il_id,
        ilce_ad=:ilce_ad,
        etkinlik_adres=:etkinlik_adres,
        etkinlik_tarih=:etkinlik_tarih,
        kullanici_id=:kullanici_id
		");
    $insert = $duzenle->execute(array(
        'etkinlik_foto' => $refimgyol,
        'etkinlik_baslik' => htmlspecialchars($_POST['etkinlik_baslik']),
        'etkinlik_aciklama' => htmlspecialchars($_POST['etkinlik_aciklama']),
        'il_id'=>htmlspecialchars($_POST['ilce_id']),
        'ilce_ad' => htmlspecialchars($row['ilce_id']),
        'etkinlik_adres' => htmlspecialchars($_POST['etkinlik_adres']),
        'etkinlik_tarih' => htmlspecialchars($_POST['etkinlik_tarih']),
        'kullanici_id' => htmlspecialchars($_POST['kullanici_id'])
    ));



    if ($insert) {

        Header("Location:../../etkinlikkur?durum=ok");
    } else {

        Header("Location:../../etkinlikkur?durum=hata");
    }
}

if (isset($_POST['kullanicibilgiguncelle'])) {



    $kullaniciguncelle = $db->prepare("UPDATE kullanici SET 
    kullanici_ad=:kullanici_ad,
    kullanici_soyad=:kullanici_soyad
    
    WHERE kullanici_id={$_SESSION['userkullanici_id']}");

    $update = $kullaniciguncelle->execute(array(

        'kullanici_ad' => htmlspecialchars($_POST['kullanici_ad']),
        'kullanici_soyad' => htmlspecialchars($_POST['kullanici_soyad'])
    ));

    if ($update) {
        Header("Location:../../hesabim?durum=ok");
    } else {
        Header("Location:../../hesabim?durum=hata");
    }
}

if (isset($_POST['etkinlikgoruntule'])) {



    $etkinliklerim = $db->prepare("SELECT * FROM etkinlik WHERE kullanici_id={$_SESSION['userkullanici_id']}");

    $update = $etkinliklerim->execute(array(

        'kullanici_ad' => htmlspecialchars($_POST['kullanici_ad']),
        'kullanici_soyad' => htmlspecialchars($_POST['kullanici_soyad']),
        'kullanici_foto' => htmlspecialchars($_POST['kullanici_foto'])
    ));

    if ($update) {
        Header("Location:../../hesabim?durum=ok");
    } else {
        Header("Location:../../hesabim?durum=hata");
    }
}

if (isset($_POST['kullanicifotoekle'])) {

	
	


	
	if ($_FILES['kullanici_foto']['size']>1048576) {
		
		echo "Bu dosya boyutu çok büyük";

		Header("Location:../../hesabim?durum=dosyabuyuk");

	}


	$izinli_uzantilar=array('jpg','png');

	//echo $_FILES['ayar_logo']["name"];

	$ext=strtolower(substr($_FILES['kullanici_foto']["name"],strpos($_FILES['kullanici_foto']["name"],'.')+1));

	if (in_array($ext, $izinli_uzantilar) === false) {
		echo "Bu uzantı kabul edilmiyor";
		Header("Location:../../hesabim?durum=formathata");

		exit;
	}


	

	@$tmp_name = $_FILES['kullanici_foto']["tmp_name"];
	@$name = $_FILES['kullanici_foto']["name"];

    

    $uploads_dir = '../../dimg/kullanicifoto';

	$uniq=uniqid();
	$refimgyol=substr($uploads_dir, 6)."/".$uniq.".".$ext;

	@move_uploaded_file($tmp_name, "$uploads_dir/$uniq.$ext");

	
	$duzenle=$db->prepare("UPDATE kullanici SET
		kullanici_foto=:kullanici_foto
		WHERE kullanici_id={$_SESSION['userkullanici_id']}");
	$update=$duzenle->execute(array(
		'kullanici_foto' => $refimgyol
	));



	if ($update) {

		$resimsilunlink=$_POST['eski_yol'];
		unlink("../../$resimsilunlink");

		Header("Location:../../hesabim?durum=ok");

	} else {

		Header("Location:../../hesabim?durum=hata");
	}


    

}



if (isset($_POST['etkinlik_sil'])) {

	$row=$_POST['etkinlik_id'];
	
	$sil=$db->prepare("DELETE from etkinlik where etkinlik_id=:etkinlik_id");
	$kontrol=$sil->execute(array(
		'etkinlik_id' => $row
	));

	if ($kontrol) {

		
        
		Header("Location:../../etkinlik-bilgileri.php?durum=ok");

	} else {

		Header("Location:../../etkinlik-bilgileri.php?durum=hata");
	}

}
