<?php require_once 'header.php';

if (isset($_SESSION['userkullanici_mail'])) {

    $sehirsor = $db->prepare("SELECT * FROM il  order by  il_id asc");
    $sehirsor->execute();
?>

    
    <div class="category-product-list bg-secondary section-space-bottom">

        <div class="container">
            <div class="inner-page-main-body"><br>
                <div class="page-controls">

                    
                </div>
            </div>
        </div>
    </div>
    <?php require_once 'footer.php' ?>
<?php } else {
    header("Location:login");
} ?>