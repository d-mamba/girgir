<?php require_once 'header.php';?>


<!-- Header Area End Here -->
<!-- Main Banner 1 Area Start Here -->

<!-- Main Banner 1 Area End Here -->
<!-- Inner Page Banner Area Start Here -->

<!-- Inner Page Banner Area End Here -->
<!-- Registration Page Area Start Here -->
<div class="registration-page-area bg-secondary section-space-bottom">
    <div class="container">
        <h2 class="title-section">Giriş</h2>
        <div class="registration-details-area inner-page-padding">
            <?php
            if (@$_GET['durum'] == "hata") { ?>

                <div class="alert alert-danger">
                    <strong>Hata!</strong>Geçersiz e-mail veya şifre kullandınız...
                </div>
            <?php } elseif (@$_GET['durum'] == "exit") { ?>

                <div class="alert alert-success">
                    <strong>Bilgi!</strong>Çıkış yapıldı.
                </div>
            <?php } elseif (@$_GET['durum'] == "Kayitbasarili") { ?>

                <div class="alert alert-success">
                    <strong>Bilgi!</strong> Kayıt başarılı lütfen giriş yapınız....
                </div>
            <?php }
            ?>


            <form action="nedmin/netting/kullanici.php" method="POST" id="personal-info-form">


                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="town-city">E-mail *</label>
                            <input type="text" id="mail" placeholder="E-mail adresinizi giriniz..." required="" name="kullanici_mail" class="form-control">

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="town-city">Şifre *</label>
                            <input type="password" id="password" placeholder="Şifrenizi giriniz..." required="" name="kullanici_password" class="form-control">

                        </div>
                    </div>

                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="pLace-order">
                            <button class="update-btn disabled" name="kullanicigiris" type="submit">Giriş</button>
                            
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Registration Page Area End Here -->
<!-- Footer Area Start Here -->
<?php require_once 'footer.php' ?>