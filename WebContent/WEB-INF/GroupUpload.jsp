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
		
		<script>
		function loadImage(){
			document.getElementById("close").value ="jusClose";
			self.close();
		}
		</script>

	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">
			<font color="red">${displayContent}</font>
			<br>
			Select a file to Upload<br><br>
			
		<form name="groupUpload" method ="post" action="/YouConnect-SocialNetworking/upload2Grp" enctype="multipart/form-data" >
		   <input type="text" placeholder="File Name" name="fileName"><br>
		    <input type='file' name='file'><br><br>
		    <input type="hidden"  name="groupId" value=${groupId }>
		    <input type="hidden"  name="groupOwner" value=${groupOwner }>
		    <input type="hidden" name="title" value=${title }>
		    <input type="hidden"  name="groupType" value=${groupType }>
		    <input type='submit' name='upload_btn' value='upload'   >
		    <input type='submit' value='Close' onclick="loadImage()">
		    <input type="hidden" name="close">
		</form>
					</div>

		

	</body>
</html>