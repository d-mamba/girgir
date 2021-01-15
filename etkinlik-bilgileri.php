<?php
require_once 'header.php';

//islemkontrol();
if (!isset($_SESSION['userkullanici_mail'])) {
    header("Location:login");
    exit;
}
$etkinliksor = $db->prepare("SELECT * FROM etkinlik");
$etkinliksor->execute();
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
                <?php }
                ?>
                <form action="nedmin/netting/kullanici.php" method="POST" class="form-horizontal" id="personal-info-form">
                    <div class="settings-details tab-content">
                        <div class="tab-pane fade active in" id="Personal">
                            <h2 class="title-section">Etkinliklerim</h2>
                            <div class="personal-info inner-page-padding">
                                <div class="row featuredContainer">
                                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 joomla plugins component">
                                        <div class="single-item-grid">
                                            <div class="item-img">
                                                <img src="img\product\12.jpg" alt="product" class="img-responsive">
                                                <div class="trending-sign" data-tips="Trending"><i class="fa fa-bolt" aria-hidden="true"></i></div>
                                            </div>
                                            <div class="item-content">
                                                <div class="item-info">
                                                    <h3><a href="#">Team Component Pro</a></h3>
                                                    <span>Joomla Component</span>
                                                    <div class="price">$15</div>
                                                </div>
                                                <div class="item-profile">
                                                    <div class="profile-title">
                                                        <div class="img-wrapper"><img src="img\profile\1.jpg" alt="profile" class="img-responsive img-circle"></div>
                                                        <span>PsdBosS</span>
                                                    </div>
                                                    <div class="profile-rating">
                                                        <ul>
                                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                            <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                            <li>(<span> 05</span> )</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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