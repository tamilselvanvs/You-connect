

<!DOCTYPE html>
<html lang="en-US" dir="ltr">
  <head>

    
    <title>YouConnect
      : Sign Up
    </title>

	<meta name="robots" content="noindex, nofollow"/>
<!------------ Including jQuery Date UI with CSS -------------->
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<!-- jQuery Code executes on Date Format option ----->
<script src="js/script.js"></script>
<link rel="stylesheet" href="resources/css/style.css">

  
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



	<link href="https://s0.assets-yammer.com/assets/resources/yam-application-7c3e2c0eadd794a4e9033e558ba59c76.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

<link href="https://s0.assets-yammer.com/assets/resources/yam-yamkit-ng-20dc3db842399d4842acc796b0b83b41.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

<link href="https://s0.assets-yammer.com/assets/resources/yam-feeds-e4dd05000c5e4c20f6c0b5e95356a86e.css" media="screen, projection, print" rel="stylesheet" type="text/css" />
<link href="https://s0.assets-yammer.com/assets/resources/yam-common-ui-fbe11afcd4a9a5daa8f4658b5cb4be57.css" media="screen, projection, print" rel="stylesheet" type="text/css" />
<link href="https://s0.assets-yammer.com/assets/resources/yam-workfeed-app-a0a4e1932aaba50d2f3ae5443bcf3759.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

  <link href="https://s0.assets-yammer.com/assets/resources/yam-pages-ad5e5eb86809ef5ea82aa7f045a4525d.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

<link href="https://s0.assets-yammer.com/assets/yam-requirejs-complete-302ee9e92e848c68219b749b338eac39.css" media="screen" rel="stylesheet" type="text/css" />

  <link href="https://s0.assets-yammer.com/assets/resources/yam-signup-f77683ce25f316a537debfb9012a3c20.css" media="screen" rel="stylesheet" type="text/css" />
	
    <link href="https://s0.assets-yammer.com/assets/resources/yam-public-0dc15da2f7f42f41bad2c11cd33e5848.css" media="screen, projection, print" rel="stylesheet" type="text/css" />
    <link href="https://s0.assets-yammer.com/assets/resources/yam-common-ui-fbe11afcd4a9a5daa8f4658b5cb4be57.css" media="screen, projection, print" rel="stylesheet" type="text/css" />

    </head>

  <div class="wrapper yj-clearfix">
    <div class="global-header global-header-ps3" role="banner">
  <div class="container">
    <div class="row">
          <a href="/YouConnect-SocialNetworking/welcome.html"><img alt="YouConnect : The UNCC social networking site" id="logo" src="http://i.imgur.com/yEPWwST.png" title="What are you working on?" width="600" height="100" /></a>
    </div>    
  </div>
</div>

 <div class="container">
<div class="signup-form">
  <form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/submitForm.html" method="post">

  <br>
  <br>
 <div class="row">
      <label for="user_last_name">Email Id*</label><br>
      <input aria-required="true" class="yj-validate last-name required wider pw-validate" id="emailId" name="emailId" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
	<br>
	<div class="row">
      <label for="user_first_name">First Name*</label><br>
      <input aria-required="true" class="yj-validate first-name required initial-focus wider" id="memberFirstName" name="memberFirstName" size="30" type="text" />
      <span class="yj-error-container"></span>
	  </div>
	  <br>
	  <div class="row">
      <label for="user_last_name">Last Name*</label><br>
      <input aria-required="true" class="yj-validate last-name required wider pw-validate" id="memberLastName" name="memberLastName" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
<br>

        <div class="row signup-password">
          <label for="user_password">Password*</label><br>
          <input aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord" name="passWord" size="30" type="password" /><br>
		  <label for="user_password">Re-type Password*</label><br>
          <input aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord2" name="passWord2" size="30" type="password" />
          <br />
          <div id="pw-rules" class="password-rules">
            <span class="quiet">
              <span class="yj-error-container"></span>
              Passwords must contain at least 6 characters.</span>
            <span id="password-department-validation-error" class="yj-validation-error password-department-error yj-hide">Password cannot match department name.</span>
          </div>
        </div>
	
<br>
    <div class="row">
      <label for="user_job_title">Gender</label><br>
      <input autocomplete="off" class="job-title wider pw-validate" id="memberGender" name="memberGender" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
	<br>
	  <div class="row">
      <label for="user_job_title">Date of Birth</label><br>
	  <input type="text" name="memberDOB" id="datepicker"/>
    </div>
	<br>
	<div class="row">
      <label for="user_job_title">Phone Number</label><br>
      <input autocomplete="off" class="job-title wider pw-validate" id="memberPhoneNumber" name="memberPhoneNumber" size="30" type="text" />
      <span class="yj-error-container"></span>
    </div>
<br><br>
    <div class="row">
        <div class="action-btns">
        <button  type="submit" class="yj-btn  yj-btn-secondary "  ><span>Sign Up</span></button>
      </div>
    </div>
    </div>

    

</form>
</div>
  <div class="grid4">
    <div class="side-col" role="complementary">
	  <h3 role="heading" aria-level="2">Already have an account?</h3>
	  <p>
      <a href="login">Log In</a><span> or</span><br />
      <a href="/forgotten_password/new">Reset your password</a>
	  </p>
</div>

  </div>

    </div>
    <div class="footer-push"></div> 
  </div>
  <footer class="global-footer" role="contentinfo">
  <div class="container">
    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
  </div>
</footer>
</body>
</html>
