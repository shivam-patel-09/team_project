<%@include file="otherHeader.jsp"%>


    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style=" background-color: rgb(200 249 196); padding: 20px; margin-bottom:40px;">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                     <h2 class="mt-3">Bedroom</h2> 
                      <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                             <a href="./furniture.jsp">Trending Furniture></a>
                              <a href="./table1.jsp"> Tables></a>
                              <a href="./product_bed.jsp">Bedroom></a>
                              
                            <span>Bed </span>
                            
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
                    		<img src="images/bedroom3.jpg" style="width: 100%; height:100%; margin-left: 0%;" alt="">
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_text">

                        <h2 style= "font-family: Mrs Eaves XL Serif, serif; text-transform: capitalize; line-height: 38px;
    color: #2F4858;; font-size: 30px;">Covelo Engineered Wood Single Box Storage Bed In Rustic Walnut Finish</h2>
                        <div class="product_details_price">Price: $1349</div>
                        <div class="product_details_quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                <label>Quantity:</label>
                                    <select name="qty">
                                    	<option value="1">1</option>
                                    	<option value="2">2</option>
                                    	<option value="3">3</option>
                                    	<option value="4">4</option>
                                    	<option value="5">5</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <a href="cart.jsp" class="btn btn-success my-2">ADD TO CART</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>color</b> <span>As shown in image </span></li>
                            <li><b>Dimensions</b> <span>90.0 cm x 97.0 cm x 196.0 cm </span></li>
                            <li><b>Room Type:</b>
                                <span>Bedroom</span>
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
                                   	<li>Hey there, roomy. Designed to make the most of space, the roomy Covelo storage bed is just perfect if you’d like to do a lot with little. Tuck away bed linen, suitcases and extra pillows in its ample box and drawer storage, and keep your wardrobes free of clutter. Smart, simple and elegant, it’s hard to go wrong with the Covelo.
                                   	</li>
                                   	<li>Made from engineered  wood</li>
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
 
    <!-- Product Details Section End -->
<%@include file="footer.jsp"%>