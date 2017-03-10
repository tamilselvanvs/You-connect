<!DOCTYPE HTML>
<html>
	<head>
		<title>YouConnect</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="resources/css/main.css" />

<!------------ Including jQuery Date UI with CSS --------------> 
<script src="http://code.jquery.com/jquery-1.10.2.js"></script> 
 <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script> 
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"> 
 <!-- jQuery Code executes on Date Format option -----> 
 <script src="js/script.js"></script>  
  
    
   <script> 
   $(document).ready(function() { 
 // Datepicker Popups calender to Choose date. 
 $(function() { 
 $("#datepicker").datepicker(); 
 // Pass the user selected date format. 
 $("#format").change(function() { 
 $("#datepicker").datepicker("option", "dateFormat", $(this).val()); 
 }); 
 }); 
 }); 
 
   </script> 
   
   <style>
  	.demo1 { 
  	font-size: 100px;
  	font-family: "Century Gothic", "Helvetica", sans-serif;
    font-weight: bold;
    font-weight: italic;
    text-align: center;
    color: #333;
    background-color: #666;
    text-shadow: 0px 1px 0px rgba(255,255,255,.5); /* 50% white from bottom */
}
   </style>


    </head>




<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
				
  <div class="container">
    <div class="demo1">
          <a href="/YouConnect-SocialNetworking/"> You Connect</a>
    </div>   
</div>
		</header>

				<!-- Main -->
<section id="main">
 
    <div class="side-col" role="complementary" align="Right">
	  <h3 role="heading" aria-level="2">Already have an account?</h3>
	  <p>
      <a href="login">Log In</a><span> or</span><br />
      <a href="/forgotten_password/new">Reset your password</a>
	  </p>
</div>


			

<form name="signup" accept-charset="UTF-8" action="/YouConnect-SocialNetworking/submitForm" method="post">

<h2><font color="red"> ${displayContent} </font></h2>
  <br>
  <br>
 <div class="row">
 		
      <input Placeholder = "Email Id*" aria-required="true" class="yj-validate last-name required wider pw-validate" id="emailId" name="emailId" size="30" type="text" />
      
    </div>
	<br>
	<div class="row">
      
      <input placeholder="First Name*" aria-required="true" class="yj-validate first-name required initial-focus wider" id="memberFirstName" name="memberFirstName" size="30" type="text" />
      
	  </div>
	  <br>
	  <div class="row">
      
      <input placeholder=" Last Name*" aria-required="true" class="yj-validate last-name required wider pw-validate" id="memberLastName" name="memberLastName" size="30" type="text" />
      
    </div>
<br>

        <div class="row signup-password">
       
          <input placeholder="Password*" aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord" name="passWord" size="30" type="password" /><br>
		 
          <input placeholder="Re-type Password*" aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord2" name="passWord2" size="30" type="password" />
          
          <div id="pw-rules" class="password-rules">
            <span class="quiet">
              <span class="yj-error-container"></span>
              Passwords must contain at least 6 characters.</span>
            <span id="password-department-validation-error" class="yj-validation-error password-department-error yj-hide">Password cannot match department name.</span>
          </div>
        </div>
	
<br>
    <div class="row">
  
      <input placeholder="Gender" autocomplete="off" class="job-title wider pw-validate" id="memberGender" name="memberGender" size="30" type="text" />
      
    </div>
	<br>
	  <div class="row">
    
	  <input type="text" placeholder="Date of Birth" name="memberDOB" id="datepicker"/>
    </div>
	<br>
	<div class="row">
      
      <input placeholder="Phone Number" autocomplete="off" class="job-title wider pw-validate" id="memberPhoneNumber" name="memberPhoneNumber" size="30" type="text" />
      
    </div>
<br><br>
    <div class="row">
        <div class="action-btns">
        <button  type="submit" class="yj-btn  yj-btn-secondary "  ><span>Sign Up</span></button>
      </div>
    </div>
    

    

</form>

</section>

<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    	
			  </div>
			</footer>

</div>

			



	</body>
</html>
