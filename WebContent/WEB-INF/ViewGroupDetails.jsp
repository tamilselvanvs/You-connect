<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>YouConnect</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="resources/css/main.css" />
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
							<li><a href="#" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/logOut" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
						</header>

				<!-- Main -->
					<section id="main">
					<form name="group" method="post" action="/YouConnect-SocialNetworking/GroupSubmit">
						Title: <input type="text" name="title" />
						<br>
						<br>
						Content:<textarea name="content"rows="10" cols="10">
						</textarea>
						<br>
						<br>
						<input type="submit" value="Submit" />	
					</form>
					<br>
					<br>
					<table style="width:100%" border=yes>
				<tr>	
					<td><h2>Topic</h2></td>
					<td><h2>Comments</h2></td>
				<c:forEach items="${groupList}" var="map">
			    <tr>	
			        <td><a href="/YouConnect-SocialNetworking/viewGroup?groupId=${map.getGroupId()}&ownerEmailId=${map.getEmailId()}">${map.getTitle()}</a></td>
					<td><h3>${map.getCommentCount()}</h3></td>			        
			    <tr>
				</c:forEach>
				</table>
				</section>
				<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/uploadDocument.html" method="get">
					<div>
        				<input type="submit" name="uploadDocument" value="UploadDocument"/>
    				</div>
				</form>
				<form accept-charset="UTF-8" action="/YouConnect-SocialNetworking/reportGroup.html" method="get">
					<div>
        				<input type="submit" name="reportGroup" value="Report"/>
    				</div>
				</form>

			<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    <img id="corporate-logo" src="https://epic.uncc.edu/sites/epic.uncc.edu/files/media/UNCC.jpg" alt="UNCC" width="1000" height="100">
			  </div>
			</footer>

			</div>

		

	</body>
</html>