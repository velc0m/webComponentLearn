<%@ page import="com.example" %>
<%@ page import="java.util.Iterator" %>

<html>
    <body>
        The friends who share your hobby of <%= request.getParameter("hobby")%>
        are: <br>

        <%
            Iterator it = al.iterator();

        %>
    </body>
</html>