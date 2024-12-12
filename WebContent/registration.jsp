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
          Registration
        </h2>
      </div>

    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <form action="SignUp" method="post">
            <div>
              <input type="text" placeholder="First Name" name="firstname" onblur="userfnameRequired()" class="form-control"id="firstname" required><br>
                 <span id="userfnameError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter First Name.</span>
            </div>
            <div>
              <input type="text" placeholder="Last Name" name="lasttname" onblur="userlnameRequired()" class="form-control" id="lasttname" required><br>
              <span id="userlnameError" style="display: none; color:red; font-size: 14px; font-family: sans-serif;">Please enter Last Name.</span>
            </div>
            <div>
              <input type="email" placeholder="Email" name="emailId" onblur="emailRequired()" class="form-control" id="email" required><br>
               <span id="emailError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Email Id.</span>	
            </div>
            <div>
              <input type="text" placeholder="Phone" name="contactNo" onblur="contactRequired()"  class="form-control" id="contactNo" required><br>
               <span id="contactError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Enter Contact Number.</span>
            </div>
            <div>
              <input type="text" placeholder="DOB" name="dob" onblur="userdobRequired()" class="form-control" id="dob" required><br>
              <span id="userdobError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Date of Birth.</span>	
            </div>
            <div>
              <input type="text" placeholder="Address" name="address" onblur="passwordRequired()" class="form-control"id="useraddress" required><br>
               	<span id="addressError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Address.</span>	
						
            </div>
           <!--<div >
             <input type="text" onblur="addressRequired()" class="form-control" name="useraddress" placeholder="Address" id="useraddress" required><br>
             	<span id="addressError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please enter Address.</span>	
			</div>  --> 
            <div>
              <input type="password" placeholder="Password" name="password" onblur="passwordRequired()" class="form-control"id="psw" required><br>
              <span id="pswError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please Enter Password.</span>	
            </div>
            <div>
              <input type="password" placeholder="Confirm Password" name="password" onblur="passwordRequired()" class="form-control"id="psw" required><br>
              <span id="pswError" style="display: none;color:red;font-size: 14px; font-family: sans-serif;">Please Enter Password.</span>	
            </div>
            
            <div class="d-flex ">
              <button type="submit">
                CREAT ACCOUNT
              </button>
            </div>
          </form>
        </div>
       <div class="col-lg-6">
        <a href="#"><img src="images/r1.png" style="width:80%; height:70%; padding-top:0%;" ></a>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->
</body>
<script>
function userfnameRequired(){
	var firstname = $("#firstname").val();
	console.log("Test : "+firstname.length);
	if(firstname.length == 0){
		$("#userfnameError").show();
	} else {
		$("#userfnameError").hide();
	}
}
function userlnameRequired(){
	var lasttname = $("#lasttname").val();
	if(lasttname.length == 0){
		$("#userlnameError").show();
	} else {
		$("#userlnameError").hide();
	}
}
function userdobRequired(){
	var dob = $("#dob").val();
	console.log("Test : "+dob.length);
	if(dob.length == 0){
		$("#userdobError").show();
	} else {
		$("#userdobError").hide();
	}
}
function contactRequired(){
	var contactNo = $("#contactNo").val();
	if(contactNo.length == 0){
		$("#contactError").show();
	} else {
		$("#contactError").hide();
	}
}
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
function addressRequired(){
	var useraddress = $("#useraddress").val();
	if(useraddress.length == 0){
		$("#addressError").show();
	} else {
		$("#addressError").hide();
	}
}

</script>
</html>


<%@include file="footer.jsp"%>