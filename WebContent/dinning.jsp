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
                     <h2 class="mt-3">Dinning Table</h2> 
                      <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                             <a href="./furniture.jsp">Trending Furniture></a>
                              <a href="./table1.jsp"> Tables></a>
                              <a href="./product_dinning.jsp">Dinning Tables></a>
                              
                            <span> 4 Seater Dining Table Sets</span>
                            
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
                    		<img src="images/dinning1.jpg" style="width: 90%; height:90%; margin-left: 0%;" alt="">
                    		 <input type="hidden" id="productImage" value="dinning1.jpg">
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_text">

                        <h2 style= "font-family: Mrs Eaves XL Serif, serif; text-transform: capitalize; line-height: 38px;
    color: #2F4858;; font-size: 30px;">Caribu 4 To 6 Extendable - Doris (Fabric) 4 Seater Dining Table Set</h2>
                        <div class="product_details_price">Rs.60277</div>
                         <input type="hidden" id="productAmount" value="60277">
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
                            <li><b>colour</b> <span>As shown in image </span></li>
                            <li><b>Dimention</b> <span>75 cm x 185 cm x 90 cm </span></li>
                            <li><b>Room Type:</b>
                                <span>Dinning</span>
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
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product_detailstab_desc ">
                                    <ul>
                                   	<li>More the merrier. Throwing a party or hosting extended family? Caribu magically expands to accommodate six guests. With its modern aesthetics and sleek finish, this dining table is a delight to homeowners and visitors alike. Paired with 4 chairs from the Doris series.</li>
                                   	<li>Dining table made from Chrome</li>
                                   	<li>Comfortably seats 4 and can be extended to seat 6</li>
                                   	<li>Chairs frame made of chrome</li>
                                   	<li>Chairs upholstery made of fabric (in the blue and dark grey variants) and leatherette (in the white variant)</li>
                                   	<li>Refer to the images for details of dimensions</li>
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