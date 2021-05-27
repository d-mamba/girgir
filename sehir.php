<style>
h1 { 
   position: absolute; 
   top: 150px; 
   left: 70px;
   color:yellow; 
}



    .hover-overlay-container {
        position: relative;
        width: 255px;
    }
 
    .hover-overlay-container:hover .overlay-image {
        opacity: 0.3;
    }
 
    .hover-overlay-container:hover .overlay-btn-container {
        opacity: 1;
    }
 
    .hover-overlay-container .overlay-image {
        display: block;
        width: 100%;
        height: auto;
        opacity: 1;
        transition: .5s ease;
        backface-visibility: hidden;
        margin-top: 20px;
        
    }
 
    .hover-overlay-container .overlay-btn-container {
        position: absolute;
        top: 50%;
        left: 50%;
        opacity: 1;
        transition: .5s ease;
        text-align: center;
        transform: translate(-50%, -50%);
    }
 
    .hover-overlay-container .overlay-btn-container .overlay-btn {
        color: #fff;
        font-size: 16px;
        padding: 10px 16px;
        background-color: 	#69F0AE;
        text-decoration: none;
    }
</style>
<?php require_once 'header.php';

if (isset($_SESSION['userkullanici_mail'])) {

    $sehirsor = $db->prepare("SELECT * FROM il  order by  il_id asc");
    $sehirsor->execute();
?>

    
    <div class="category-product-list bg-secondary section-space-bottom">

        <div class="container">
            <div class="inner-page-main-body"><br>
                <div class="page-controls">

                    <div class="tab-content">


    



                        <div role="tabpanel" class="tab-pane fade in active clear products-container" id="list-view">
                            <div class="product-list-view-style2">


                                <?php while ($sehircek = $sehirsor->fetch(PDO::FETCH_ASSOC)) { ?>
                                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                        <div class="single-item-grid">
                                            <div class="hover-overlay-container">
                                                <img class="overlay-image" src="img/background.jpg" >
                                                
                                                <div class="overlay-btn-container">
                                                    <a href="ilceler" class="overlay-btn"><font color="black"><b><?php echo $sehircek['il_ad'] ?></b></font></a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                <?php } ?>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php require_once 'footer.php' ?>
<?php } else {
    header("Location:login");
} ?>