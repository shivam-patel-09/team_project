<%@include file="otherHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script>
function addToCart(){
		$("#addToProductQty").val($("#productQty").val());
		$("#addToproductPrice").val(parseInt($("#productPrice").val()));
		$("#addToproductId").val($("#productId").val());
		$("#addToCartForm").submit();
}
</script>

<!-- Hero Section Begin -->
    <section class="hero hero-normal">
    	<form id="addToCartForm" action="addToCart" method="post">
    		<input type="hidden" name="addToProductQty" id="addToProductQty">
    		<input type="hidden" name="addToproductPrice" id="addToproductPrice">
    		<input type="hidden" name="addToproductId" id="addToproductId" value="bedroom.jsp">
    	</form>


 <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" style=" background-color: rgb(200 249 196); padding: 20px; margin-bottom:40px;">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                     <h2 class="mt-3">Shopping Cart</h2> 
                      <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                             
                            <span>Shopping Cart </span>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
	var orderId = $("#orderId").val();
	
	function onlinePayment(){
		var amt = $("#cartTotalId").val();
		var options = {
			    "key": "rzp_test_rEARbPmOMhB9x5", // Enter the Key ID generated from the Dashboard
			    "amount": amt +"00", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
			    "currency": "INR",
			    "name": "Online Payment",
			    "description": "Test Transaction",
			    "image": "https://example.com/your_logo",
			    "order_id": orderId, //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
			    "callback_url": "http://localhost:8080/tem_project/",
			    "prefill": {
			        "name": "Testing Demo",
			        "email": "testing@gmail.com",
			        "contact": "9987654578"
			    },
			    "notes": {
			        "address": "Razorpay Corporate Office"
			    },
			    "theme": {
			        "color": "#3399cc"
			    }
		};
		var rzp1 = new Razorpay(options);
		rzp1.open();
	    e.preventDefault();
	}
	function incementDecrement(id, pid){
		var qty = $("#qty"+pid).val();
		var temp = $("#qty"+pid).val();
		if(qty > 0){
			if(id == 1){
				qty = parseInt(qty) - 1;
				if(qty != 0){
					$("#qty"+pid).val(qty);
				}
			} else{
				qty = parseInt(qty) + 1
				$("#qty"+pid).val(qty);
			}	
		}
		
		if(id == 1 && parseInt(temp) > 1){
			var price = $("#price"+pid).val(); 
			var totalCart = parseInt($("#cartTotalId").val()) - parseInt(price);
			var tmp = parseInt(price) * parseInt($("#qty"+pid).val());
			var total = $("#total"+pid).val(tmp);
			$("#cartTotalId").val(totalCart);
		} 
		
		if(id == 2){
			var price = $("#price"+pid).val(); 
			var totalCart = parseInt($("#cartTotalId").val()) + parseInt(price);
			var tmp = parseInt(price) * parseInt($("#qty"+pid).val());
			var total = $("#total"+pid).val(tmp);
			$("#cartTotalId").val(totalCart);
		}
	}
	function paymentOnline(){
		$("#amountId").val($("#cartTotalId").val());
		$("#paymentOnlineID").submit();
	}
</script>

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad" style="padding-top: 50px; padding-bottom: 80px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table" style="margin-bottom: 30px;font-size: 20px;
    font-weight: 700;
    color: #1c1c1c;
    padding-bottom: 20px;">
                        <table class="table1" style="width: 100%; text-align: center; border-collapse: collapse;">
                            <thead class="thread1" style="display: table-header-group; vertical-align: middle;border-color: inherit;box-sizing: border-box;">
                                <tr class="tr1" style="display: table-row;vertical-align: inherit;border-color: inherit;border-bottom: 1px solid #ebebeb;">
                                    <th class="shoping__product" style="text-align: left;" > Products</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total  </th>
                                    <th></th>
                                </tr>
                            </thead>
                            <c:set value="0" var="cartTotal"></c:set>
                            <c:forEach var="carts" items="${addToCartList}">
	                            <tbody class="tbody1" style="display: table-row-group; vertical-align: middle;  border-color: inherit;">
	                               <tr >
	                                    <td class="shoping__cart__item" style="padding-top: 30px;padding-bottom: 30px;border-bottom: 1px solid #ebebeb;">
	                                        <img src="images/${carts.image_name}" alt="" style="height:70px;display: inline-block;margin-left: 50px;">
	                                        
                           				<h5>${carts.pname}</h5>
	                           				 
	                           				     
	                                    </td>
	                                    
	                                    <td class="shoping__cart__price" style="font-size: 18px;color: #1c1c1c; font-weight: 700;width: 100px;">
	                                       <input type="text" value="${carts.amount}" id="price${carts.add_cart_id}" name="price">   
	                                       
	                                    </td>
	                                    <td class="shoping__cart__quantity" style="width: 225px;">
	                                        <div class="quantity">
	                                          <button onclick="incementDecrement(1,${carts.add_cart_id})">-</button>
	                                                <input type="text" value="${carts.quantity}" id="qty${carts.add_cart_id}" name="qty${carts.add_cart_id}" style="text-align: center;width: 25%;">
                                                <button onclick="incementDecrement(2,${carts.add_cart_id})">+</button>
	                                        </div>
	                                    </td>
	                                    <td class="shoping__cart__total" style="font-size: 18px;color: #1c1c1c;font-weight: 700;width: 110px;">
	                                       <input type="text" value="${carts.total_amount}" id="total${carts.add_cart_id}" name="total"> 
	                                        
	                                    </td>
	                                   <!-- <td class="shoping__cart__item__close" style="text-align: right;">
	                                        <span class="icon_close"></span>
	                                    </td>-->
	                                    <td><a href="cancelAddToCart?add_cart_id=${carts.add_cart_id}">Cancel</a>
                                    </td>
	                                </tr>                           
	                             
	                                <c:set var="cartTotal" value="${cartTotal + carts.total_amount}"></c:set>
	                            </tbody>
                            </c:forEach>
                            
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns" >
                        <a href="index.jsp" class="primary-btn cart-btn" style="color: #6f6f6f; padding: 14px 30px 12px; background: #f5f5f5;">CONTINUE SHOPPING</a>
                        
                    </div>
                </div>
                <!--<div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount" style="margin-top: 45px;">
                            <h5 class="h55" style="font-size: 20px;color: #1c1c1c;  font-weight: 700;margin-bottom: 25px;">Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code" style="width: 255px;height: 46px;border: 1px solid #cccccc; font-size: 16px; color: #b2b2b2;text-align: center;display: inline-block;margin-right: 15px;">
                                <button type="submit" class="site-btn" style="padding: 15px 30px 11px;  font-size: 12px; letter-spacing: 4px;  background: #7fad39;;">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>  -->
                <div class="col-lg-6">
                    <div class="shoping__checkout" style="background: #f5f5f5;  padding: 30px; padding-top: 20px; margin-top: 50px;">
                        <h5 class="hh5" style="color: #1c1c1c; font-weight: 700; font-size: 20px;margin-bottom: 28px;">Cart Total</h5>
                        <ul class="shop-ul" style="margin-bottom: 28px;">
                            <li class="shop-li1" style="font-size: 16px;   color: #1c1c1c; font-weight: 700;  list-style: none; overflow: hidden;border-bottom: 1px solid #ebebeb;  padding-bottom: 13px; margin-bottom: 18px;">
                            Delivery Charges <span class="shop-span" style="font-size: 18px;color: #dd2222;float: right;">$50</span></li>
                            <li class="shop-li1" style="font-size: 16px;   color: #1c1c1c; font-weight: 700;  list-style: none; overflow: hidden;border-bottom: 1px solid #ebebeb;  padding-bottom: 13px; margin-bottom: 18px;">
                            Total <span class="shop-span" style="font-size: 18px;color: #dd2222;float: right;"><input type="text" id="cartTotalId" value="${cartTotal + 50}"></span></li>
                           <!-- <li class="shop-li1" style="font-size: 16px;   color: #1c1c1c; font-weight: 700;  list-style: none; overflow: hidden;border-bottom: 1px solid #ebebeb;  padding-bottom: 13px; margin-bottom: 18px;">
                            Total <span class="shop-span" style="font-size: 18px;color: #dd2222;float: right;">Rs.${cartTotal}<input type="text" value="${cartTotal}" id="cartTotalId">  </span></li>-->
                        </ul>
                        
                        
                        
 					    <% 
					    	if(null != request.getAttribute("order_id")) {
					    %>
					    	<input type="hidden" id="orderId" value="<%=request.getAttribute("order_id").toString()%>">
					    	<input type="hidden" id="amount" value="<%=request.getAttribute("amount").toString()%>">
						    <button id="rzp-button1" onclick="onlinePayment();">Online Payment</button>
					    <%		
					    	} else {
					    %>
						    <button id="rzp-button1" onclick="onlinePayment();">PROCEED TO CHECKOUT</button>
					    <%		
					    	}
					    %>
					    
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

<%@include file="footer.jsp"%>