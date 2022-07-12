<%@ page import="com.jsp.FunUtils" %>
<html>
<head>

</head>

<body>
	Lets have some fun : <%= FunUtils.makeItUpper("fun fun fun") %>
	<br><br>
	The Square of 5 is <%= FunUtils.makeSquare(5) %>
	
	<br><br>
	The Cube of 5 is <%= FunUtils.makeItCube(5) %>
	
</body>

</html>