<?php

require_once 'header.php';
if (isset($_SESSION['userkullanici_mail'])) { 

$ilsor = $db->prepare("SELECT * FROM il");
$ilsor->execute();


$ilcesor = $db->prepare("SELECT * FROM ilce");
$ilcesor->execute();




?>
<form action="nedmin/netting/kullanici.php" enctype="multipart/form-data" name="etkinlikkurr" method="POST" class="form-horizontal" id="personal-info-form">
    <div class="form-horizontal">
        <div class="container">


            <h2 class="title-section">Etkinlik Bilgileri</h2>
            <div class="inner-page-details inner-page-padding">

                <div class="row settings-wrapper">


                    <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">

                        <?php
                        if (@$_GET['durum'] == "hata") { ?>

                            <div class="alert alert-danger">
                                <strong>Hata!</strong>Etkinlik Kurulamadı.
                            </div>
                        <?php } elseif (@$_GET['durum'] == "ok") { ?>

                            <div class="alert alert-success">
                                <strong>Tebrikler!</strong>Etkinlik Kurdunuz.
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
                            <label class="col-sm-3 control-label">Etkinlik Başlık</label>
                            <div class="col-sm-6">
                                <input class="form-control" disabled="" name="etkinlik_baslik"  value="" id="first-name" type="text">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">Etkinlik Fotoğraf</label>
                            <div class="col-sm-6">
                                <!--<img src="<?php echo $etkinlikcek['etkinlik_foto']; ?>">-->
                                <input class="form-control" required="" name="etkinlik_foto" id="first-name" type="file">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="exampleFormControlTextarea1">Etkinlik Açıklama </label>
                            <div class="col-sm-6">
                                <textarea class="form-control" name="etkinlik_aciklama" maxlength="250" required="" placeholder="Etkinlik hakkında bilgiler aktarmalısın..." id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>
                        </div>



                        <div class="form-group">
                            <label class="control-label col-sm-3" for="country">Şehir</label>
                            <div class="custom-select col-sm-3  ">
                                <select required="" name="il_id" id="il_id" class='select2'>

                                    <option value="">Şehir Seçin...</option>
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
                                <select required="" name="ilce_id" id="ilce_id" onchange="getilce()" class='select2'>
                                    <option value="">İlçe seçin...</option>

                                    <?php
                                    while ($ilcecek = $ilcesor->fetch(PDO::FETCH_ASSOC)) {

                                    ?>
                                        <option value="<?php echo $ilcecek['il_id'] ?>"><?php echo $ilcecek['ilce_ad'] ?></option>
                                        

                                    <?php

                                    } ?>
                                </select>   
                            </div>
                        </div>

                        


                        <div class="form-group">
                            <label class="col-sm-3 control-label">Açık adres</label>
                            <div class="col-sm-6">
                                <input class="form-control" required="" name="etkinlik_adres" maxlength="250" placeholder="Etkinlik adresini belirt..." id="company-name" type="text">
                            </div>
                        </div>


                        <input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id']; ?>">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">Tarih
                            </label>
                            <div class="col-sm-6">
                                <input class="form-control" required="" name="etkinlik_tarih" id="etkinlik_tarih" type="date">
                            </div>
                        </div>
                        <input type="hidden" name="il_id" value="">
                        <div class="form-group">
                                    
                            <input type="hidden" id="input" name="ilcead" >

                            <div class="col-sm-9">

                                <button class="update-btn" style="float: right;" name="etkinlikkur" id="login-insert" type="submit">Etkinlik Kur</button>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
<!-- About Page End Here -->
<!-- Footer Area Start Here -->
<?php 
require_once 'footer.php'
?>
<!-- Veritabanından cekilen selectbox id'leri için SCRİPT -->
<script type="text/javascript">
    $(document).ready(function() {
        var $select1 = $('#il_id'),
            $select2 = $('#ilce_id'),
            $options = $select2.find('option');

        $select1.on('change', function() {
            $select2.html($options.filter('[value="' + this.value + '"]'));
        }).trigger('change');
    });
    
</script>
<script>
    function getilce(){
        document.getElementById('input').innerHTML= etkinlikkurr.ilce_id[etkinlikkurr.ilce_id.selectedIndex].text
    }
</script>
<?php } else {
    header("Location:login");
}?>
