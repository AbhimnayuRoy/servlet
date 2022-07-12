<html>
<head>

</head>

<body>
	
	This is the basic of JSP Scriptlet.
	<br><br>	
	<h3>Welcome in the example of JSP Scriptlet. This is used to define one line to multi line statement inside jsp page</h3>
	
	<%
		for(int i = 1; i <= 5; i++){
			
			out.println("<br>I really love to code : " + i);
		}
	%>

</body>

</html>