<!DOCTYPE html>
<%@page import="com.web.bean.LoggerInfo"%>
<html>

<%
LoggerInfo info = (LoggerInfo)session.getAttribute("loggerInfo");
%>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Veer Associates</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" /><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <a class="navbar-brand" href="index.jsp">
            <img src="images/veerl.png"  style="height:25px; width:80px; margin-right: 0%;" alt="" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="">
            <ul class="navbar-nav  ">
              <li class="nav-item ">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
              </li>
             <li class="nav-item">
                <a class="nav-link" href="furniture.jsp"> Category </a>
              </li>
              
              
              <li class="nav-item">
                <a class="nav-link" href="contactus.jsp">Contact us</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="about.jsp"> About</a>
              </li>
              
               <%if(null != info) {%>
				<li class="nav-item">
                	<a class="nav-link" href="orderDetail">Order</a>
              	</li>
			<%} %>
         
            </ul>
             <div class="ms-auto user_option">
            <%if(null == info) {%>
	             <a href="login.jsp">
	                <img src="login.jsp" alt="">
	                <span>
	                  Login
	                </span>
	              </a>
            <%} else { %>
	             <a href="logout">
	                <img src="login.jsp" alt="">
	                <span>
	                  Logout
	                </span>
	              </a>
	              
	              <a href="displayCart">
	                <img src="displayCart" alt="">
	                <span>
	                  Cart
	                </span>
	                <%if(null == info){ %>
									<span class="badge badge-danger"></span></a>
								<%} else {%>
									<span class="badge badge-danger"><%=info.getCartQty()%></span></a>
								<%} %>
							
            <%} %>
	             
              <!-- <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form> -->
              
            </div>
          </div>
        

        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

