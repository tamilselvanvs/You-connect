<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
  </style>
		<link rel="stylesheet" href="resources/css/main.css" />
		<script>
		function Reload() {
            window.location.reload();
         }

		</script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">You Connect</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="homePageRedirect">Home</a></li>
        <li><a href="/YouConnect-SocialNetworking/groupView.html">Group</a></li>
		<li><a href="/YouConnect-SocialNetworking/viewFriends">Friends</a></li>
		<li><a href="/YouConnect-SocialNetworking/forumView">Forum</a></li>
		<li><a href="/YouConnect-SocialNetworking/docView">Documents</a></li>
      </ul>
      <form class="navbar-form navbar-right" role="search" method="get" action="/YouConnect-SocialNetworking/results.html">
        <div class="form-group input-group">
          <input type="text" name="searchstring" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
            <button class="btn btn-default" type="submit" value="Search" >
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>        
        </div>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/YouConnect-SocialNetworking/editprofile.html"><img src="/YouConnect-SocialNetworking/getProfilePic" alt=""  height="50" width="50"/> My Account</a></li>
      </ul>
    </div>
   <h3> <i> ${name} </i>, Here you can change your account password</h3>
  </div>
</nav>

<div class="wrapper yj-clearfix">

    <div class="container">
		<div class="edit-password">
  			<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/submitPassword" method="post">
  			
  			
  			

  			
				<br>
  				<br>
  				<h2><font color="red"> ${headerMessage} </font></h2>
 				<div class="row login-password">
          			
          			<input placeholder ="New Password*" aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord" name="passWord" size="30" type="password" /><br>
		  			<br>
          			<input placeholder ="Re-type Password*" aria-describedby="pw-str pw-rules" aria-required="true" autocomplete="off" class="yj-validate password wider" id="passWord2" name="passWord2" size="30" type="password" />
          		<br />
          		<div id="pw-rules" class="password-rules">
            		<span class="quiet">
              			<span class="yj-error-container"></span>
              			Passwords must contain at least 6 characters.
              		</span>
            		<span id="password-department-validation-error" class="yj-validation-error password-department-error yj-hide">Password cannot match department name.</span>
          		</div>
        		</div>
				<br>
				<div class="row login-password">
    	    		<div class="action-btns">
        				<button  type="submit" class="yj-btn  yj-btn-secondary "  ><span>Update</span></button>
      				</div>
    			</div>
    		</form>
    	</div>
	</div>
	</div>

</body>
</html>