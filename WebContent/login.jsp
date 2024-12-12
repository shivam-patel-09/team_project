<%@include file="otherHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
  </head>
<body>

  <!-- contact section -->

  <section class="contact_section layout_padding" style="padding-top: 70px;padding-bottom: 70px;">
    <div class="container ">
      <div class="heading_container">
        <h2 class="">
          Login
        </h2>
      </div>

    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <form action="loginCheck" method="post">
            <div>
              <input type="text" placeholder="Enter Username" name="userName" onblur="emailRequired()" class="form-control"id="email" required><br>
                <span id="emailError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Email Id.</span>	
            </div>
            <div>
              <input type="password" placeholder="Enter Password" name="userPassword" onblur="passwordRequired()" class="form-control" id="psw" required><br><br>
               <span id="pswError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Password.</span>	
            </div>
          
            <div class="d-flex ">
             
              <span class="pwd"><a href="forgot_pwd.jsp">Forgot Password?</a><br>
              <a href="registration.jsp">New Registration?</a></span>
               
            </div>
            <div class="d-flex ">
              <button>
                Login
              </button>
            </div>
          </form>
        </div>
        
        <div class="col-lg-6">
        <a href="#"><img src="images/login1.png" style="width:80%; height:70%; padding-top:0%;" ></a>
        </div>
        
      </div>
    </div>
  </section>

  <!-- end login section -->
</body>
<script>
function emailRequired(){
	var email = $("#email").val();
	console.log("Test : "+email.length);
	if(email.length == 0){
		$("#emailError").show();
	} else {
		$("#emailError").hide();
	}
}
function passwordRequired(){
	var psw = $("#psw").val();
	if(psw.length == 0){
		$("#pswError").show();
	} else {
		$("#pswError").hide();
	}
}
</script>
</html>


<%@include file="footer.jsp"%>