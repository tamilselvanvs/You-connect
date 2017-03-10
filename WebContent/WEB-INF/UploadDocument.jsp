<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
	<meta name="robots" content="noindex, nofollow"/>
<!------------ Including jQuery Date UI with CSS -------------->
<link rel="stylesheet" href="resources/css/main.css" />

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<!-- jQuery Code executes on Date Format option ----->
<script src="js/script.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<h3>Upload Document : </h3>
	<form action="/YouConnect-SocialNetworking/doUpload.html" method="post" enctype="multipart/form-data">
		File to upload: <input type="file" name="file"><br />      
       <input type="submit" value="Upload">
	</form>

</body>
</html>