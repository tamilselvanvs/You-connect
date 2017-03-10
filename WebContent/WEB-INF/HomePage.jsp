<!DOCTYPE HTML>
<html>
	<head>
		<title>YouConnect</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
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
   <h3> Hello <i> ${name} </i>how are you doing today? </h3>
  </div>
</nav>


		<!-- Wrapper -->
			<div id="wrapper">

				<%-- <!-- Header -->
					<header id="header">
						<span class="avatar"><a href="homePageRedirect"><img src="/YouConnect-SocialNetworking/getProfilePic" alt="" /></a></span>
						<ul class="icons">
							<li><a href="/YouConnect-SocialNetworking/editprofile.html" class="fa fa-pencil-square-o"><span class="label"> View/Edit Profile</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/editPhoto" onclick="javascript:void window.open('/YouConnect-SocialNetworking/editPhoto','1461642804314','width=550,height=300,toolbar=0,menubar=0,location=0,status=1,scrollbars=1,resizable=1,left=0,top=0');return false; if (window.focus) {newwindow.focus()}" class="fa fa-camera-retro"><span class="label"> Edit Photo</span></a></li>
							<li><a href="/YouConnect-SocialNetworking/logOut" class="fa fa-sign-out"><span class="label"> Sign Out</span></a></li>
						</ul>
						${headerMessage} 
						<form method="get" action="/YouConnect-SocialNetworking/results.html">
							<div>
								<input type="text" name="searchstring"/>
								<br/>
								<input type="submit" value="Search" />
							</div>
						</form>
					</header>
 --%>



				<!-- Main -->
					<section id="main">

						<!-- Thumbnails -->
							<section class="thumbnails">
							
								<div>
									<a href="/YouConnect-SocialNetworking/groupView.html">
										<img src="resources/images/groups.jpg" alt="" />
										<h3>Groups</h3>
									</a>
									<a href="/YouConnect-SocialNetworking/viewFriends">
										<img src="resources/images/friends.jpg" alt="" />
										<h3>Friends</h3>
									</a>
								</div>
								<div></div>
								<div>
									<a href="/YouConnect-SocialNetworking/forumView">
										<img src="resources/images/forums.jpg" alt="" />
										<h3>Forums</h3>
									</a>
									<a href="/YouConnect-SocialNetworking/docView">
										<img src="resources/images/documents.jpg" alt="" />
										<h3>Documents</h3>
									</a>
								</div>
							</section>

					</section>

		

			</div>
			
				<footer class="global-footer" role="contentinfo">
			  <div class="container">
			    
			  </div>
			</footer>

		

	</body>
</html>