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
    <section class="breadcrumb-section set-bg" style=" background-color: rgb(200 249 196); padding: 20px; margin-bottom:40px;">
        <form id="addToCartId" action="addToCart" method="post">
   		<input type="hidden" name="amount" id="amount">
   		<input type="hidden" name="quantity" id="quantity">
   		<input type="hidden" name="imageName" id="imageName">
   		<input type="hidden" name="productName" id="productName">
   </form>
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                     <h2 class="mt-3">Dressers</h2> 
                      <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                             <a href="./furniture.jsp">Trending Furniture></a>
                              <a href="./storage.jsp"> Storage></a>
                              <a href="./product_dressers.jsp">Dressers></a>
                              
                            <span>Dressers </span>
                            
                        </div>
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
                    		<img src="images/dresser1.jpg" style="width: 100%; height:100%; margin-left: 0%;" alt="">
                    		<input type="hidden" id="productImage" value="dresser1.jpg">
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_text">

                        <h2 style= "font-family: Mrs Eaves XL Serif, serif; text-transform: capitalize; line-height: 38px;
    color: #2F4858;; font-size: 30px;">Magellan Solid Wood Dressing Table In Teak Finish</h2>
                        <div class="product_details_price">Price: $2409</div>
                        <input type="hidden" id="productAmount" value="2909">
                        <div class="product_details_quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
			                        <input type="hidden" id="productQty" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" onclick="addToCart();" class="btn btn-success my-2">ADD TO CART</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>color</b> <span>As shown in image </span></li>
                            <li><b>Dimensions</b> <span>192.0 cm x 38.0 cm x 79.0 cm </span></li>
                            <li><b>Room Type:</b>
                                <span>BedRoom</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product_details_tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active mt-3" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true" style="color:#24d278; text-transform: uppercase; font-size: 16px;">Description</a>
                            </li>
                        </ul>
                        <div class="tab-content" style="padding: 15px;  font-size: 15px; ">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product_detailstab_desc ">
                                    <!--<h6>Products Infomation</h6>  -->
                                   <ul>
                                   	
                                   	<li>Sittin' pretty. Two shelves, a spacious tabletop and a cupboard make room for all your lotions and magic potions. There's also a row of hooks above for your jewellery and ties. Comes with a pouffe, so you can take your time doing up your hair.</li>
                                   	<li>Made from sheesham wood</li>
                                   	<li>Drawer internal panels and back panel made of MDF</li>
                                   	<li>Mirror length: Full-length</li>
                                   	<li>Please refer to images for dimension details</li>
                                   	<li>Indoor use only</li>
                                   </ul>
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