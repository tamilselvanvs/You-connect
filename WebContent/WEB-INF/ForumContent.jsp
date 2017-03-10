<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <li ><a href="homePageRedirect">Home</a></li>
        <li><a href="/YouConnect-SocialNetworking/groupView.html">Group</a></li>
		<li ><a href="/YouConnect-SocialNetworking/viewFriends">Friends</a></li>
		<li class="active"><a href="/YouConnect-SocialNetworking/forumView">Forum</a></li>
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
						<span class="avatar"><a href="homePageRedirect"><img src="/YouConnect-SocialNetworking/getProfilePic" alt="" /></a></span>
					<ul class="icons">
							<li><a href="/YouConnect-SocialNetworking/editprofile.html" class="fa fa-pencil-square-o"><span class="label"> View/Edit Profile</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/editPhoto" onclick="javascript:void window.open('/YouConnect-SocialNetworking/editPhoto','1461642804314','width=550,height=300,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false; if (window.focus) {newwindow.focus()}" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/logOut" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
						</header>

				<!-- Main -->
					<section id="main">
				
					<br>
					<br>
					<table style="width:100%" border=yes>
				<tr>	
					<td>Topic:     ${title}</td>
					
				</tr>
				<tr><td>Content:<br>
					${content} </td></tr>
				</table>
				
				<br>
				<br>
			<h2>Replies:</h2>			
				<c:forEach items="${forumLists}" var="map">
				<c:if test="${map.getFriendName() !=null && !map.getFriendName().isEmpty()}">	         
				<table>
				<tr>
					<td><h5>${map.getFriendName()} </h5> tells...</td>
					 
			        
			         </tr>
				<tr>
					<td><h4>${map.getComments()}</h4></td>
					 
			        
			         </tr>
			         <br/>
			         <br/>
			   
			     </table>
			     </c:if>
				</c:forEach>
				<br>
				<form name="reply" method="post" action="/YouConnect-SocialNetworking/SubmitForumReply">
						
						<textarea placeholder="Reply" name="comments"rows="5" cols="5"></textarea>
						<br>
						<br>
						<input type="submit" value="Submit" />	
						<a href="/YouConnect-SocialNetworking/popupex.html" onclick="javascript:void window.open('/YouConnect-SocialNetworking/popupex.html','1461642804314','width=550,height=300,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false;">Invite a Member outside UNCC network</a>
					</form>
					
				
					</section>


			</div>

		

	</body>
</html>