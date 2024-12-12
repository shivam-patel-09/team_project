<%@include file="otherHeader.jsp"%>


    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style=" background-color: rgb(200 249 196); padding: 20px; margin-bottom:40px;">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                     <h2 class="mt-3">Bookshelves</h2> 
                      <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                             <a href="./furniture.jsp">Trending Furniture></a>
                              <a href="./storage.jsp"> Storage></a>
                              <a href="./product_bookshelves.jsp">Bookshelves></a>
                              
                            <span>Bookshelves </span>
                            
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
                    		<img src="images/bookshelve2.jpg" style="width: 100%; height:100%; margin-left: 0%;" alt="">
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_details_text">

                        <h2 style= "font-family: Mrs Eaves XL Serif, serif; text-transform: capitalize; line-height: 38px;
    color: #2F4858;; font-size: 30px;">Armstrong Engineered Wood Bookshelf In Laminate Finish</h2>
                        <div class="product_details_price">Price: $755</div>
                        <div class="product_details_quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                        </div>
                        <a href="cart.jsp" class="btn btn-success my-2">ADD TO CART</a>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>color</b> <span>As shown in image </span></li>
                            <li><b>Dimensions</b> <span>160.0 cm x 119.0 cm x 29.0 cm </span></li>
                            <li><b>Room Type:</b>
                                <span>Living Room</span>
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
                                   	
                                   	<li>Bookkeeping in style. Explore the world of modern bookshelves with Armstrong. Designed in a grid style bookshelf, its versatile and eye catching. You can use it as a bookshelf, display shelf or even as a room divider. Living rooms, hallways or dining rooms, the multi-purpose Armstrong will be at home anywhere. You can choose from two different finishes and configurations.</li>
                                   	<li>Made of engineered wood</li>
                                   	<li>For daily care, wipe with a soft, dry cloth</li>
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