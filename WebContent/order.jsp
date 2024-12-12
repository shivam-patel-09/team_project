<%@include file="otherHeader.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="breadcrumb-section set-bg" style=" background-color: rgb(200 249 196); padding: 30px; margin-bottom:40px;">
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 text-center" >
                    <div class="breadcrumb__text" >
                        <h2>Your Orders</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.jsp">Home></a>
                              
                            <span>Orders</span>
                                                   
                        </div>
                    </div>
                </div>
            </div>
        </div>
         </section> 
    
        <table class="table1" style="width: 100%; text-align: center; border-collapse: collapse; margin-top: 70px; margin-bottom:70px">
                            <thead class="thread1" style="display: table-header-group; vertical-align: middle;border-color: inherit;box-sizing: border-box;">
								<tr>
									<td>Order Id</td>
									<td>Product Image</td>
									<td>Product Name</td>
									<td>Address</td>
									<td>Order Status</td>
									<td>Total Amount</td>
								</tr>
							</thead>
                             <c:forEach var="list" items="${orderList}">
								<tr>
									<td>${list.orderId}</td>
									<td> <img src="images/${list.imageName}" alt="" style="height:70px;display: inline-block;margin-left: 50px;"></td>
									<td>${list.productName}</td>
									<td>${list.billingAddress}</td>
									<td>${list.statusName}</td>
									<td>${list.totalAmount}</td>
								</tr>                             
                             </c:forEach>
							</table>	
 
    
<%@include file="footer.jsp"%>