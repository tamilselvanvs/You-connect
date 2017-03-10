<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
	<title>YouConnect
	:Edit Profile</title>
	<meta name="robots" content="noindex, nofollow"/>
<!------------ Including jQuery Date UI with CSS -------------->
<link rel="stylesheet" href="resources/css/main.css" />

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<!-- jQuery Code executes on Date Format option ----->
<script src="js/script.js"></script>
<link rel="stylesheet" href="resources/css/style.css">

  
 <!--  <script type="text/javascript">
    $(document).ready(function() {
      String x = request.getParameter("edit");
      toggleFrequencySelectBox(x); // show/hide box on page load

    });
    function toggleFrequencySelectBox(String) {
      if(x!=null && x.equals("confirm")) {
        $('#memberFirstName').prop('readonly', false);
        $('#update').prop('disabled', false);
      } else {
        $('#memberFirstName').prop('readonly', true);
        $('#update').prop('disabled', true);
      }
    }
  </script> -->
   
</head>
<body>
<div class="wrapper yj-clearfix">
  		<header id="header">
						<span class="avatar"><a href="homePageRedirect"><img src="/YouConnect-SocialNetworking/getProfilePic" alt="" /></a></span>
						<ul class="icons">
							
							<li><a href="/YouConnect-SocialNetworking/editPhoto" onclick="javascript:void window.open('/YouConnect-SocialNetworking/editPhoto','1461642804314','width=550,height=300,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false; if (window.focus) {newwindow.focus()}" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/logOut" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
					</header>
    <!-- <div class="container"> -->
		<!-- <div class="edit-profile"> -->
  			<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/updateForm.html" method="post">
				<br>
  				<br>
 				<div class="row">
      				<label for="user_last_name">Email Id*</label><br>
      				<input aria-required="true" class="yj-validate last-name required wider pw-validate" id="emailId" name="emailId" size="30" type="text" value="${emailId}" readonly/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_first_name">First Name*</label><br>
      				<input aria-required="true" class="yj-validate first-name required initial-focus wider" id="memberFirstName" name="memberFirstName" size="30" type="text" value="${firstname}"/>
      				<span class="yj-error-container"></span>
	  			</div>
	  			<br>
	  			<div class="row">
     				<label for="user_last_name">Last Name*</label><br>
      				<input aria-required="true" class="yj-validate last-name required wider pw-validate" id="memberLastName" name="memberLastName" size="30" type="text" value="${lastname}"/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
    			<div class="row">
      				<label for="user_job_title">Gender</label><br>
      				<input autocomplete="off" class="job-title wider pw-validate" id="memberGender" name="memberGender" size="30" type="text" value="${gender}"/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
	  			<div class="row">
      				<label for="user_job_title">Date of Birth</label><br>
	  				<input type="text" name="memberDOB" id="datepicker" value="${dob}"/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_job_title">Phone Number</label><br>
      				<input autocomplete="off" class="job-title wider pw-validate" id="memberPhoneNumber" name="memberPhoneNumber" size="30" type="text" value="${phone}"/>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<br>
	    		<div class="row">
    	    		<div class="action-btns">
        				<button type="submit" class="yj-btn  yj-btn-secondary " name="update" ><span>Save</span></button>
      				</div>
    			</div>
    		</form>
    		<br/>
    		<br/>
    		<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/editPassword.html" method="get">
    			<button type="submit" class="yj-btn  yj-btn-secondary " name="passwordEdit"><span>Edit Password</span></button>
    		</form>
    	</div>

<script src="${pageContext.request.contextPath}/static/libs/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/profile-edit-validation-rules.js"></script>

</body>
</html>