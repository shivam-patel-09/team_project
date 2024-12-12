<%@include file="otherHeader.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
function addToCart(){
	var amount = $("#productAmount").val();
	$("#amount").val(amount);
	var qty = $("#productQty").val();
	$("#quantity").val(qty);
	var image = $("#productImage").val();
	$("#imageName").val(image);
	$("#addToCartId").submit();  
	
}
function Feedback(){
	$("#addToproductId").val($("#productId").val());
	$("#feedbackForm").submit();
}
</script>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <form id="addToCartId" action="addToCart" method="post">
   		<input type="hidden" name="amount" id="amount">
   		<input type="hidden" name="quantity" id="quantity">
   		<input type="hidden" name="imageName" id="imageName">
   </form>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                      <!-- <h2 class="mt-5">Chair</h2> --> 
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_pic">
                        <div class="img-box">
                    		<img src="images/wheel.jpg" style="width: 60%; height: 20%; margin-left: 20%;" alt="">
                        </div>
                        <div class="product_detailspic_slider owl-carousel">
                            <img data-imgbigurl="img/product/details/vim-lemon-dishwash-bar.jpg"
                                src="img/product/details/vim-lemon-dishwash-bar.jpg" alt="">
                            <img data-imgbigurl="img/product/details/amul-kool-elaichi-flavoured-milk.jpg"
                                src="img/product/details/amul-kool-elaichi-flavoured-milk.jpg" alt="">
                            <img data-imgbigurl="img/product/details/brooke-bond-red-label-strong-blend-tea.jpg"
                                src="img/product/details/brooke-bond-red-label-strong-blend-tea.jpg" alt="">
                            <img data-imgbigurl="img/product/details/india-gate-super-basmati-rice.jpg"
                                src="img/product/details/india-gate-super-basmati-rice.jpg" alt="">
                            <img data-imgbigurl="img/product/details/bournvita.jpg"
                                src="img/product/details/bournvita.jpg" alt="">
                            <img data-imgbigurl="img/product/details/ariel-matic-top-load-liquid-detergent-refill.jpg"
                                src="img/product/details/ariel-matic-top-load-liquid-detergent-refill.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_text">

                        <p>VMS Careline Select Pneumatic Wheel Regular Folding Manual Wheelchair Black with Safety Belt (Black)
                        </p>
                        <div class="product_details_price">Price: $599</div>
                        <div class="product_details_quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn btn-dark my-3">ADD TO CART</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>colour</b> <span>As shown in image </span></li>
                            <li><b>Weight</b> <span>1 kg</span></li>
                            <li><b>Room Type:</b>
                                <span>Office</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product_details_tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active mt-3" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Description</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product_detailstab_desc ">
                                    <h6>Products Infomation</h6>
                                    <p>Wheelchairs or mobility equipment are commonly used by those who suffer from musculoskeletal issues, inability to 
                                    walk, severe injuries, paralysis, or old age. The VMS Careline Foldable Wheelchair Select is an ideal choice for its 
                                    premium quality and maximum comfort. The foldable wheelchair is made of premium quality Powder Coated mild steel and 
                                    PVC seat that boosts the life of the product. This comfortable and modern wheelchair is lightweight and suitable for 
                                    all ages. It is a self-propelled wheelchair which means that the user can drive themselves to reach the preferred 
                                    place. The foldable wheelchair can save some space and is easy to store. The behindhand push is anti-slip. It comes 
                                    with detachable calf support which helps in reducing the stress from your calf muscles caused due to prolonged 
                                    sitting and provides relaxation. The foldable mobility equipment provides freedom of movement to the ones who cannot 
                                    walk. It is durable and easy to clean. The handbrakes over these wheels are easy to use, adjust, and control the 
                                    speed. The padded armrest, PVC seat, and back allows the user to carry out office work without any issues. 
                                    Specifications: Seat Width:18 inches Total width in a closed position: 9 inches Rear Wheel Size: 24 inches Front 
                                    Wheel Size: 8 inches Seat to Floor Height: 19 inches Seat Depth: 16 inches Back Height: 18 inches Total Height: 35
                                     inches Max User Weight Capacity: 100 kgs.</p>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>
                     </div>
          </div>
    </section>
    
    <section class="contact_section layout_padding" style="padding-top: 10px;">
    <div class="container " >
      <div class="heading_container" >
        <h2 class="">
          Feedback
        </h2>
      </div>
 	</div>
 	
    <div class="container">
      <div class="row">
        <div class="col-md-6">
           <form action="Feedback" method="post" id="feedbackForm">
            <input type="hidden" name="addToproductId" id="addToproductId">
            <input type="hidden" name="addTouserID" id="addTouserID">
            <div>
          
                <input type="text" class="message-box" placeholder="Feedback Message" name="feedback_message"/>
                       
              
            </div>
            <div class="d-flex ">
              <button  type="button" onClick="Feedback()"> Add </button>
            </div>
          </form>
        </div>
 
      </div>
    </div>
  </section>
    <!-- Product Details Section End -->
<%@include file="footer.jsp"%>