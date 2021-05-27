<?php require_once 'header.php';

if (isset($_SESSION['userkullanici_mail'])) {
    $sehirsor = $db->prepare("SELECT * FROM il ");
    $sehirsor->execute();
    $ilcesor = $db->prepare("SELECT * FROM ilce");
    $ilcesor->execute();
   
?>
         
            <div class="pagination-area bg-secondary">
                <div class="container">
                    <div class="pagination-wrapper">
                        <ul>
                            <li><a href="index.htm">Şehir</a><span> -</span></li>
                            <li>İlçeler</li>
                        </ul>
                    </div>
                </div>  
            </div> 
           
            <div class="category-product-list bg-secondary section-space-bottom">                
                <div class="container">
                    <div class="inner-page-main-body">
                        <div class="page-controls">
                            <div class="row">
                                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-8">
                                    <div class="page-controls-sorting display-none-in-mobile">
                                        <div class="dropdown">
                                            <button class="btn sorting-btn dropdown-toggle" type="button" data-toggle="dropdown">İlçeler<i class="fa fa-angle-down" aria-hidden="true"></i>
                                            </button>
                                            <ul class="product-categories-list dropdown-menu">
                                                <li><a href="#">WordPress<span>(150)</span></a></li>
                                                <li><a href="#">Joomla <span>(100)</span></a></li>
                                                <li><a href="#">PSD<span>(50)</span></a></li>
                                                <li><a href="#">Plugins<span>(60)</span></a></li>
                                                <li><a href="#">Components<span>(40)</span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                   
                                    <div class="page-controls-sorting">
                                        <div class="dropdown">
                                            <button class="btn sorting-btn" type="button" >Etkinlikler<i class="fa fa-sort" aria-hidden="true"></i></button>
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-4">
                                    <div class="layout-switcher">
                                        <ul>
                                            <li><a href="#gried-view" data-toggle="tab" aria-expanded="false"><i class="fa fa-th-large"></i></a></li>    
                                            <li class="active"><a href="#list-view" data-toggle="tab" aria-expanded="true"><i class="fa fa-list"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade clear products-container" id="gried-view">
                                <div class="product-grid-view padding-narrow">
                                    <div class="row">                                        
                                       
                                       
                                       
                                       
                                        
                                          <!-- Block kategori-->  
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                            <div class="single-item-grid">
                                                <div class="item-img">
                                                    <img src="img\product\58.jpg" alt="product" class="img-responsive">
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
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <ul class="pagination-align-center">
                                                <li class="active"><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                            </ul>
                                        </div>  
                                    </div>
                                </div>                                
                            </div>
                            <div role="tabpanel" class="tab-pane fade in active clear products-container" id="list-view">
                                <div class="product-list-view-style2">
                                    
                                    
                                    
                                    
                                    
                                <!--Satır listesi-->      
                                    
                                    <div class="single-item-list">
                                        <div class="item-img">
                                            <img src="img\product\66.jpg" alt="product" class="img-responsive">
                                        </div>
                                        <div class="item-content">
                                            <div class="item-info">
                                                <div class="item-title">
                                                    <h3><a href="#">Responsive APP</a></h3>
                                                    <span>APP</span>                          
                                                </div>
                                                <div class="item-description">
                                                    <p>Pimply dummy text of the printing and typesetting industry. </p>
                                                </div>
                                                <div class="item-sale-info">
                                                    <div class="price">$15</div>
                                                    <div class="sale-qty">Sales ( 11 )</div>
                                                </div>
                                            </div>
                                            <div class="item-profile-list">
                                                <div class="profile-title">
                                                    <div class="img-wrapper"><img src="img\profile\2.jpg" alt="profile" class="img-responsive img-circle"></div>
                                                    <span>PsdBosS</span>
                                                </div>
                                                <div class="profile-rating-info">
                                                    <ul>
                                                        <li>
                                                            <ul class="profile-rating">
                                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                                                <li>(<span> 05</span> )</li>
                                                            </ul>
                                                        </li>
                                                        <li><i class="fa fa-comment-o" aria-hidden="true"></i>( 10 )</li>
                                                        <li><i class="fa fa-heart-o" aria-hidden="true"></i>( 20 )</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <ul class="pagination-align-center">
                                                <li class="active"><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                            </ul>
                                        </div>  
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