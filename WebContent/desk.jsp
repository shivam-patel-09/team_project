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
                    		<img src="images/desk.jpg" style="width: 50%; height: 20%; margin-left: 20%;" alt="">
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_text">

                        <p>HOF F502 Office Computer Desk Chair Comfort Leatherrete Ergonomic Adjustable Chair Height</p>
                        <div class="product_details_price">Price: $449</div>
                        <div class="product_details_quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="#" class="btn btn-dark my-3">ADD TO CARD</a>
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
                                    <p>HOF Office Ergonomic Office Chair
                                     HOF Chair provides an intuitive, intelligent workplace seating solution that caters to each person's individual needs.
                                     When you are spending more than 8 hours in an office, sitting in the same position, a good chair is very important. This executive
                                     leatherrete task chair with padded back and seating offers comfort and support. Height Adjustment: With a 360-degree swivel and a height 
                                     adjustment range with the full chair height of 119cm, the chair is suitable for all height ranges Multi-function Mechanism: Pneumatic controls 
                                     make it easier to raise or lower the seat. The rocking mode can relax you from heavy work, pull out the handle to start rocking and pull it in 
                                     to stop. Smooth and Durable Casters: The PU casters provide great mobility, suitable for hard floors, carpet and more, without noise during
                                     swiveling and the won't scratch the surface of the floor. Easy Installation: Installation instruction is included in the box. The instruction 
                                     is simple to understand, and no extra tools and fittings required. The mid-size make this computer desk chair ideal for kids and adults. WHO WE
                                     ARE Being among India’s leading furniture brands, HOF specializes in premium high-end chairs, luxury sofas, executive desks and imported 
                                     furniture. Ultramodern manufacturing facility and design innovation have powered HOF to become a forerunner in the global furniture industry.</p>
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