<?php

require_once 'header.php';


$ilsor = $db->prepare("SELECT * FROM il");
$ilsor->execute();
$ilcek = $ilsor->fetch(PDO::FETCH_ASSOC);

$ilcesor = $db->prepare("SELECT * FROM ilce");
$ilcesor->execute();
$ilcecek = $ilcesor->fetch(PDO::FETCH_ASSOC);

?>

<div class="form-horizontal">
    <div class="container">
        <h2 class="title-section">Etkinlik Kur</h2>
        <div class="inner-page-details inner-page-padding">

            <div class="row settings-wrapper">


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
                    <?php }
                    ?>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Etkinlik Başlık</label>
                        <div class="col-sm-6">
                            <input class="form-control" name="etkinlik_baslik" id="first-name" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="exampleFormControlTextarea1">Etkinlik Açıklama </label>
                        <div class="col-sm-6">
                            <textarea class="form-control" required="" name="etkinlik_aciklama" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="control-label col-sm-3" for="country">Şehir</label>
                        <div class="custom-select col-sm-3  ">
                            <select name="il_id" id="il_id" class='select2'>

                                <option value="">Şehir seçin...</option>
                                <?php
                                while ($ilcek = $ilsor->fetch(PDO::FETCH_ASSOC)) {

                                ?>
                                    <option value="<?php echo $ilcek['il_id'] ?>"><?php echo $ilcek['il_ad'] ?>
                                    <?php } ?>

                            </select>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="control-label col-sm-3" for="district">İlçe</label>
                        <div class="custom-select col-sm-3">
                            <select name="ilce_id" id="ilce_id" class='select2'>
                                <option value="">İlçe seçin...</option>
                                <?php
                                while ($ilcecek = $ilcesor->fetch(PDO::FETCH_ASSOC)) {

                                ?>
                                    <option value="<?php echo $ilcecek['il_id'] ?>"><?php echo $ilcecek['ilce_ad'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Açık adres</label>
                        <div class="col-sm-6">
                            <input class="form-control" ; name="" id="company-name" type="text">
                        </div>
                    </div>

                    

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Tarih/Saat</label>
                        <div class="col-sm-6">
                            <input class="form-control" ; name="" id="company-name" type="date">
                        </div>
                    </div>
                    <input type="hidden" name="il_id" value="<?php echo $ilcek['il_id'] ?>">
                    <div class="form-group">

                        <div class="col-sm-5">

                            <button class="update-btn" style="float: right;" name="kullanicibilgiguncelle" id="login-update">Etkinlik Kur</button>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <!-- About Page End Here -->
    <!-- Footer Area Start Here -->
    <?php
    require_once 'footer.php'
    ?>