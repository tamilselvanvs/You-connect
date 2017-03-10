<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

		<title>YouConnect</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="resources/css/main.css" />
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
        <li ><a href="homePageRedirect">Home</a></li>
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
   <h3> Hello <i> ${name} </i>how are you doing today? </h3>
  </div>
</nav>

		<!-- Wrapper -->
			<div id="wrapper">

<!-- Header -->
					<header id="header">
						<span class="avatar"><img src="/YouConnect-SocialNetworking/getFriendsProfilePic" alt="" /></span>
						<ul class="icons">
							
						</ul>
						<form method="get" action="/YouConnect-SocialNetworking/homePageRedirect">
			   				<input type="submit" value="Home" />
			   			</form>
						<c:if test="${acctDesc.getSelfFlag()== 1 and acctDesc.getFriendsFlag()  ==0}">
				
			   			<form method="get" action="#">
			   				<input type="submit" value="Request Pending" disabled/>
			   			</form>
			         </c:if>
						<c:if test="${acctDesc.getSelfFlag()== 1 and acctDesc.getFriendsFlag()  ==1}">
				
			   			<form method="get" action="/YouConnect-SocialNetworking/unfriend">
			   				<input type="submit" value="UnFriends" />
			   			</form>
			         </c:if>
			         <c:if test="${acctDesc.getSelfFlag()== 0 and acctDesc.getFriendsFlag()  ==1}">
				
			   			<form method="get" action="/YouConnect-SocialNetworking/accept">
			   				<input type="submit" value="Accept" />
			   			</form>
			   			<form method="get" action="/YouConnect-SocialNetworking/reject">
			   				<input type="submit" value="Reject" />
			   			</form>
			         </c:if>							
						<c:if test="${acctDesc.getSelfFlag()== 0 and acctDesc.getFriendsFlag()  ==0}">
				
			   			<form method="get" action="/YouConnect-SocialNetworking/addasfriend">
			   				<input type="submit" value="Add as a Friend" />
			   			</form>
			   			
			         </c:if>	
					</header>
	<form accept-charset="UTF-8" >
				<br>
  				<br>
 				<div class="row">
      				<label for="user_last_name">Email Id* :</label><h2> ${member.emailId }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_first_name">First Name* :</label> <h2>${member.memberFirstName }</h2>
      				<span class="yj-error-container"></span>
	  			</div>
	  			<br>
	  			<div class="row">
     				<label for="user_last_name">Last Name*:</label> <h2>${member.memberLastName }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
    			<div class="row">
      				<label for="user_job_title">Gender:</label> <h2>${member.memberGender }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
	  			<div class="row">
      				<label for="user_job_title">Date of Birth:</label> <h2>${member.memberDOB }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<div class="row">
      				<label for="user_job_title">Phone Number:</label><h2> ${member.memberPhoneNumber }</h2>
      				<span class="yj-error-container"></span>
    			</div>
				<br>
				<br>
    		</form>
				<!-- Main -->

			</div>

		<!-- Scripts -->
			<script src="resources/js/jquery.min.js"></script>
			<script src="resources/js/jquery.poptrox.min.js"></script>
			<script src="resources/js/skel.min.js"></script>
			<script src="resources/js/main.js"></script>

	</body>
</html>