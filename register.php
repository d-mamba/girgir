<?php require_once 'header.php' ?>


<div class="registration-page-area bg-secondary section-space-bottom">
    <div class="container">
        <h2 class="title-section">Kullanıcı Kayıt</h2>
        <div class="registration-details-area inner-page-padding">
            <?php

            if (@$_GET['durum'] == "farklisifre") { ?>

                <div class="alert alert-danger">
                    <strong>Hata!</strong> Girdiğiniz şifreler eşleşmiyor.
                </div>

            <?php } elseif (@$_GET['durum'] == "eksiksifre") { ?>

                <div class="alert alert-danger">
                    <strong>Hata!</strong> Şifreniz minimum 6 karakter uzunluğunda olmalıdır.
                </div>

            <?php } elseif (@$_GET['durum'] == "mukerrerkayit") { ?>

                <div class="alert alert-danger">
                    <strong>Hata!</strong> Bu mail adına daha önce kayıt oluşturulmuş.
                </div>

            <?php } elseif (@$_GET['durum'] == "basarisiz") { ?>

                <div class="alert alert-danger">
                    <strong>Hata!</strong> Kayıt Yapılamadı Sistem Yöneticisine Danışınız.
                </div>

            <?php }
            ?>

            <form action="nedmin/netting/kullanici.php" method="POST" id="personal-info-form">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="first-name">Adınız *</label>
                            <input type="text" id="first-name" name="kullanici_ad" required="" placeholder="Adınızı Giriniz..." class="form-control">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="last-name">Soyadınız *</label>
                            <input type="text" id="last-name" placeholder="Soyadınızı Giriniz..." required="" name="kullanici_soyad" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="email">E-mail *</label>
                            <input type="text" id="email" placeholder="E-mail adresinizi girin" required="" name="kullanici_mail" class="form-control">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" >Cinsiyetiniz *</label><br>
                            <input type="radio" value="kadın" required="" name="kullanici_cinsiyet" class=""> Kadın
                            <input type="radio" value="erkek" required="" name="kullanici_cinsiyet" class=""> Erkek
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="town-city">Şifre *</label>
                            <input type="text" id="town-city" placeholder="Şifreniz..." required="" name="kullanici_passwordone" class="form-control">

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="form-group">
                            <label class="control-label" for="town-city">Şifre (Tekrar) *</label>
                            <input type="text" id="town-city" placeholder="Şifreniz tekrar..." required="" name="kullanici_passwordtwo" class="form-control">

                        </div>
                    </div>
                </div>

                <div class="row">


                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="pLace-order">
                            <button class="update-btn disabled" name="kullanicikaydet" type="submit" value="Login">Kayıt</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Footer Area Start Here -->
<?php require_once 'footer.php' ?>