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

  <section class="contact_section layout_padding">
    <div class="container ">
      <div class="heading_container">
        <h2 class="">
          Forgot Password
        </h2>
      </div>

    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <form action="forgotPassword" method="post">
            <!--<div>
              <input type="email" placeholder="Email address" name="email"/><br>
            </div>-->
             <div>
              <input type="email" placeholder="Email address" name="email" onblur="emailRequired()" class="form-control" id="email" required><br>
               <span id="emailError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Email Id.</span>	
            </div>
            <div class="d-flex ">
              <button>
                GET PASSWORD
              </button>
            </div>
          </form>
        </div>
       
      </div>
    </div>
  </section>
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
</script>
</html>
  <!-- end contact section -->



<%@include file="footer.jsp"%>