<%@ page import="java.util.*" %>

<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!--step 1 : creating todo list form  -->
	<form action="todo-list.jsp">
		Add new item : <input type="text" name="theItem" />
						<input type="submit" value="Submit"/>
	</form>
	<hr>
	<br/><br>
<!--step 2 : Add new item to "TO DO" list  -->
	<%
		//Get the to do item from the session
		List<String> items = (List<String>) session.getAttribute("myToDoList"); //any name as long as we are consistence
		
		//if the To DO list doesn't exist then create a new one
		if(items == null){
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}
		//see if there is form data to add
		String toDo = request.getParameter("theItem");
		if(toDo != null){
			items.add(toDo);
		}
	%>	
	
	<!--step 3 : display the list  -->
	<b>Item in the list :</b>
	<ol>
	<%
		for(String item : items){
			out.println("<li> <b>" + item + "</b></li>");
		}
		
		items = null;
	%>
	</ol>
</body>
</html>