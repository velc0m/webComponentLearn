<%@ page import="com.example.Counter"%>

<html>
	<body>
		<%! int jspCount=1;%>
		The page count is:
		<%= Counter.getCount()%>
		<br>
		The JSP count:
		<%= jspCount++%>
	</body>
</html>
