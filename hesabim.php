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

            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">


                <form action="nedmin/netting/kullanici.php" method="POST" enctype="multipart/form-data" class="form-horizontal" id="personal-info-form">
                    <div class="settings-details tab-content">
                        <div class="tab-pane fade active in" id="Personal">
                            <h2 class="title-section">Profil Düzenle</h2>
                            <div class="personal-info inner-page-padding">
                                <?php
                                if (@$_GET['durum'] == "hata") { ?>

                                    <div class="alert alert-danger">
                                        <strong>Hata! </strong>İşlem başarısız.
                                    </div>
                                <?php } elseif (@$_GET['durum'] == "ok") { ?>

                                    <div class="alert alert-success">
                                        <strong>Bilgi!</strong> İşlem başarılı.
                                    </div>
                                <?php } elseif (@$_GET['durum'] == "dosyabuyuk") { ?>

                                    <div class="alert alert-danger">
                                        <strong>Hata!</strong> Dosya boyutu büyük.
                                    </div>
                                <?php } elseif (@$_GET['durum'] == "formathata") { ?>

                                    <div class="alert alert-danger">
                                        <strong>Format Hatalı!</strong> ".jpg" veya ".png" formatlı bir fotoğraf yükleyin.
                                    </div>
                                <?php }
                                ?>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Mevcut Resim</label>
                                    <div class="col-sm-3">
                                        <img width="128" height="128" src="<?php echo $kullanicicek['kullanici_foto']; ?>">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Resim Seç ...</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" required="" name="kullanici_foto" id="first-name" type="file">
                                        <button class="update-btn" style="float: right;" name="kullanicifotoekle" id="login-update">Yükle</button>

                                    </div>
                                </div>

                                <input type="hidden" name="eski_yol" value="<?php echo $kullanicicek['kullanici_foto']; ?>">

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Kullanıcı Adı</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name="kullanici_ad" value="<?php echo $kullanicicek['kullanici_ad'] ?>" id="first-name" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Kullanıcı Soyadı</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" name="kullanici_soyad" value="<?php echo $kullanicicek['kullanici_soyad'] ?>" id="last-name" type="text">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">E-mail(Değiştirilemez..)</label>
                                    <div class="col-sm-6">
                                        <input class="form-control" disabled="" ; value="<?php echo $kullanicicek['kullanici_mail'] ?>" id="company-name" type="text">
                                    </div>
                                </div>




                                <div class="form-group">

                                    <div class="col-sm-9">

                                        <button class="update-btn" style="float: right;" name="kullanicibilgiguncelle" id="login-update">Güncelle</button>
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