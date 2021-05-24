<?php
require_once 'header.php';

//islemkontrol();
if (!isset($_SESSION['userkullanici_mail'])) {
    header("Location:login");
    exit;
}
$etkinliksor = $db->prepare("SELECT * FROM etkinlik WHERE kullanici_id=:kullanici_id order by  etkinlik_tarih DESC");
$etkinliksor->execute(array(
    'kullanici_id' => $_SESSION['userkullanici_id']
));
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
                        <strong>Hata!</strong> Etkinlik Kaldırılamadı.
                    </div>
                <?php } elseif (@$_GET['durum'] == "ok") { ?>

                    <div class="alert alert-success">
                        <strong>Bilgi! </strong> Etkinlik Kaldırıldı.
                    </div>
                <?php }
                ?>
                <form action="nedmin/netting/kullanici.php" method="POST" name="etkinlik_sil" class="form-horizontal" id="personal-info-form">
                    <div class="settings-details tab-content">
                        <div class="tab-pane fade active in" id="Personal">
                            <h2 class="title-section">Etkinliklerim</h2>
                            <div class="personal-info inner-page-padding">

                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Başlık</th>
                                            <th scope="col">Tarih</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $say = 0;
                                        while ($etkinlikcek = $etkinliksor->fetch(PDO::FETCH_ASSOC)) {
                                            $say++ ?>

                                                

                                            <tr>
                                                <th scope="row"><?php echo $say ?></th>
                                                <td><?php echo $etkinlikcek['etkinlik_baslik'] ?></td>
                                                <td><?php echo $etkinlikcek['etkinlik_tarih'] ?></td>
                                                <td><input type="text" value="<?php echo $etkinlikcek['etkinlik_id'] ?>">
                                                        
                                                        <button class="btn btn-danger btn-xs" name="etkinlik_sil">Kaldır</button>
                                                    </td>
                                            </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>


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