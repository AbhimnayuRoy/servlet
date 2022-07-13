<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>


<body>
<!-- creating cookies from user point of view  -->
<%
	//read form data
	String favLang = request.getParameter("favouriteLanguage");

	//create the cookie
	Cookie theCookie = new Cookie("myNewcookies.favLanguage" , favLang);

	//set the life span ... total number of seconds 
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to browser
	response.addCookie(theCookie);
%>
<!-- displaying the update change to the user  -->
	
	Thanks! We set your favourite language to : <%=request.getParameter("favouriteLanguage") %>
	<br> <br>
	
	<!-- simply create a link to the homepage -->
	<a href="cookies-homepage.jsp"> Return to homepage</a>
</body>
</html>