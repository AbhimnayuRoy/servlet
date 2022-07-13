<%@ page import="java.util.*" %>
<html>

	<head>
		<title>This is the example of cookies</title>
	</head>
	
	<body>
		<h3>Training Portal</h3>
		<!-- read the favourite programming language cookie  -->
		<%
			// the default ... if there are no cookies
			String favLang = "Java"; 
		
			//get the cookies from the browser request
			Cookie [] theCookies = request.getCookies();
			
			//find our favourite language cookie
			if(theCookies != null){
				for(Cookie tempCookies : theCookies){
					if("myNewcookies.favLanguage".equals(tempCookies.getName())){
						favLang = tempCookies.getValue();
					}
				}
			}
		
		%>	
	<!-- Now show a personalized page to the end user -->
	<h3>New Books for <%= favLang %></h3>
	<ul>
		<li>blah blah blah.....</li>
		<li>blah blah blah.....</li>
		<li>blah blah blah.....</li>
	</ul>
	
	<h3>Latest News Reports for <%= favLang %></h3>
	<ul>
		<li>blah blah blah.....</li>
		<li>blah blah blah.....</li>
		<li>blah blah blah.....</li>
	</ul>
	
	<h3>Hot Jobs for <%= favLang %></h3>
	<ul>
		<li>blah blah blah.....</li>
		<li>blah blah blah.....</li>
		<li>blah blah blah.....</li>
	</ul>
	<h3 align="center"><a href="cookies-personalize-form.html"> Personalize your home page</a></h3>
	</body>
</html>