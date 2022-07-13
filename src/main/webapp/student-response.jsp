<html>
<head>
	<title>Student Confirmation</title>
</head>

<body>

<%-- 		The student is confirmed : ${param.firstName} ${param.lastName}  --%>
	<div align="center">
	<h1 >The student is confirmed : <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %></h1>
	<h1> The student's country is : <%= request.getParameter("Country") %></h1>
	<h1>His favourite Programming Language is : <%=request.getParameter("favouriteLanguage") %></h1>
	<br>
	</div>
	
	<div style="display: flex;
    flex-direction: row;
    justify-content: center;">
	<div></div>
	<div>
	His Favourite food are :
	<ul >	
	<%
	
	String [] food = request.getParameterValues("food");
		for(String favFood : food){
			out.println("<li>" + favFood + "</li>");
		}
	%>
	</ul> 
	</div>
	<div></div>
	</div>
</body>

</html>