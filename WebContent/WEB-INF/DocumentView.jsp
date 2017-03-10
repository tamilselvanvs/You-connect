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
			
			document.group.groupType.value=	t.value;
						
		}
		var isbns="";
   		function boxDisable(t) {

   		    if (t.checked) {
   		    	
   		    	if(isbns==null || isbns==""){
   		    		
   		    		isbns=t.value+",";
   		    	}
   		    	else{
   		    		isbns=isbns+t.value+",";
   		    	}
   		    	
   		    } else {
   		    	var str = t.value+",";
   		    	isbns=isbns.replace(str,"");
   		    	
   		    }
   		 document.group.participants.value = isbns;
   		
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
        <li ><a href="/YouConnect-SocialNetworking/groupView.html">Group</a></li>
		<li ><a href="/YouConnect-SocialNetworking/viewFriends">Friends</a></li>
		<li><a href="/YouConnect-SocialNetworking/forumView">Forum</a></li>
		<li class="active"><a  href="/YouConnect-SocialNetworking/docView">Documents</a></li>
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
   <h3> <i>${name} </i>, This page you can view your documents </h3>
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
					<td><h2>Document ID</h2></td>
					<td><h2>Title</h2></td>
					<td><h2>URL</h2></td>
					<td><h2>Document Owner</h2></td>
				</tr>
				<c:forEach items="${dd}" var="map">
			    <tr>	
			    	<td><h3>${map.getDocId()}</h3></td>
			        <td><a href="${map.getContentURL() }" download>${map.getTitle()}</a></td>
					<td><h3>${map.getContentURL()}</h3></td>
					<td><h3>${map.getGroupOwner()}</h3></td>
					 
			        
			         <tr>
				</c:forEach>
				</table>
					</section>



			</div>

		

	</body>
</html>