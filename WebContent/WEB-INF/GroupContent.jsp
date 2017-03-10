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
    div.checker span {
  background-image: url(../img/sprite.png);
}
  </style>
		<link rel="stylesheet" href="resources/css/main.css" />
		<script>
		function Reload() {
            window.location.reload();
         }
		
		function selected(t){
			
			document.groupView.groupType.value=	t.value;
						
		}
		function onUpload(){
			
			var url ="/YouConnect-SocialNetworking/uploadGrp?groupId="+document.groupView.groupId.value+"&groupOwner="+document.groupView.groupOwner.value+"&groupType="+document.groupView.groupType.value+"&title="+document.groupView.title.value;
			
			window.open(url,'1461642804314','width=550,height=300,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false; if (window.focus) {newwindow.focus()}
			
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
        <li class="active"><a href="/YouConnect-SocialNetworking/groupView.html">Group</a></li>
		<li ><a href="/YouConnect-SocialNetworking/viewFriends">Friends</a></li>
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
   <h3> <i> ${name} </i>, This page you can view your groups </h3>
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
					<form name="groupView" method="post" action="/YouConnect-SocialNetworking/postContent">
						Group ID: <h3><input type="text" name="groupId" value="${groupId} " readonly></h3>
						Group Name: <h3><input type="text" name="title" value="${title}" readonly></h3>
						Group Owner: <h3><input type="text" name="owner" value="${owner}" readonly></h3>
						Group Type: <h3><input type="text" name="groupType" value="${groupType}" readonly></h3><br><br>
						<input type="hidden" name="groupOwner" value="${ownerId}" >
						<table border=yes>
						<tr><td>
						Members:
						
							<table border=yes>
							<c:forEach items="${mem}" var="map">
								<tr>
									<td>${map}</td>
								</tr>
							</c:forEach>
							
							</table>
							<!-- <input type="button" value="Edit Member" onclick="editMember()"> -->
							</td>
							
							</tr>
							
						</table>
						<br><br>
						content:
						<table border=yes>
							<c:forEach items="${al}" var="map">
							<c:if test="${map.getContent() !=null && !map.getContent().isEmpty() && map.getParticipants() !=null && !map.getParticipants().isEmpty()&& (map.getContentURL() ==null || map.getContentURL().isEmpty())}">
								<tr>
									<td><span><h3>${map.getParticipants()} said,</h3> </span><br>
										<h3><i>${map.getContent()}</i></h3> 
									</td>
								</tr>
								</c:if>
								<c:if test="${map.getContent() !=null && !map.getContent().isEmpty() && map.getParticipants() !=null && !map.getParticipants().isEmpty()&& (map.getContentURL() !=null && !map.getContentURL().isEmpty())}">
								<tr>
									<td><span><h3>${map.getParticipants()} Attached,</h3> </span><br>
										 
										<a href="<c:url value='${map.getContentURL()}' />" download ><i>${map.getContent()}</i></a>
									</td>
								</tr>
								</c:if>
							</c:forEach>
							
						</table>
						<br><br>
						<textarea placeholder="post a content" name="content"rows="5" cols="5" ></textarea><br><br>
						<a href="#" onclick="onUpload()" > <B>Upload File</B></a><br><br>
						<input type="submit" name="Post Content" value="Post Content">
					</form>
		
			
					</section>



			</div>

		

	</body>
</html>