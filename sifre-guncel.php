<?php
require_once 'header.php';

//islemkontrol();
if (!isset($_SESSION['userkullanici_mail'])) {
    header("Location:login");
    exit;
}
?>
<!-- Header Area End Here -->
<!-- Main Banner 1 Area Start Here -->
<div class="inner-banner-area">
    <div class="container">

    </div>
</div>
<!-- Main Banner 1 Area End Here -->
<!-- Inner Page Banner Area Start Here -->
<div class="pagination-area bg-secondary">
    <div class="container">
        <div class="pagination-wrapper">

        </div>
    </div>
</div>
<!-- Inner Page Banner Area End Here -->
<!-- Settings Page Start Here -->
<div class="settings-page-area bg-secondary section-space-bottom">
    <div class="container">

        <div class="row settings-wrapper">
            <?php require_once 'hesap-sidebar.php'; ?>

            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">

                <?php
                if (@$_GET['durum'] == "hata") { ?>

                    <div class="alert alert-danger">
                        <strong>Hata!</strong>Güncelleme başarısız.
                    </div>
                <?php } elseif (@$_GET['durum'] == "ok") { ?>

                    <div class="alert alert-success">
                        <strong>Bilgi!</strong>Güncelleme başarılı.
                    </div>
                <?php } elseif (@$_GET['durum'] == "eskisifrehata") { ?>

                    <div class="alert alert-danger">
                        <strong>Hata!</strong>Eski Şifreniz Hatalı.
                    </div>
                <?php } elseif (@$_GET['durum'] == "uyumsuzsifre") { ?>

                    <div class="alert alert-danger">
                        <strong>Şifreler Uyumsuz!</strong>Şifrelerin uyumlu olduğundan emin olun.
                    </div>
                <?php } elseif (@$_GET['durum'] == "eksiksifre") { ?>

                    <div class="alert alert-danger">
                        <strong>Hata!</strong>Şifrenizde en az 6 karakter kullanmalısınız.
                    </div>
                <?php }
                ?>
                
                <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal" id="personal-info-form">
                    <div class="settings-details tab-content">
                        <div class="tab-pane fade active in" id="Personal">
                            <h2 class="title-section">Şifre Bilgilerini Düzenle</h2>
                            <div class="personal-info inner-page-padding">

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Eski Şifreniz</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="kullanici_eskipassword" placeholder="Eski Şifrenizi Giriniz..." id="first-name" type="password">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Yeni Şifreniz</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="kullanici_passwordone" placeholder="Yeni Şifrenizi Giriniz..." id="first-name" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Yeni Şifreniz(Tekrar)</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" name="kullanici_passwordtwo" placeholder="Yeni Şifrenizi Giriniz(Tekrar)..." id="first-name" type="text">
                                    </div>
                                </div>

                                <div class="form-group">

                                    <div class="col-sm-5">

                                        <button class="update-btn" name="kullanicisifreguncelle" id="login-update">Güncelle</button>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<!-- Settings Page End Here -->
<!-- Footer Area Start Here -->
<?php require_once 'footer.php'; ?>