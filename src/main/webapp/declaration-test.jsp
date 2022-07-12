<html>
<head>

</head>

<body>
	
	This is the basic of JSP Declaration.
	<br><br>	
	<h3>Welcome in the example of JSP Declaration.This is used to define a method inside JSP page</h3>
	<!--Below is the use of JSP Declaration, -->
	
	<%!
	String makeItUpper(String name){
		return name.toUpperCase();
	}
	
	
	%>
	
	Upper case  "Abhimanyu" : <%= makeItUpper("Abhimanyu") %>  

</body>

</html>