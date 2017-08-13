<%--<html>--%>
    <%--<body>--%>
       <%--<jsp:useBean id="person" type="com.example.Person" class="com.example.Employee" scope="request">--%>
           <%--&lt;%&ndash;<jsp:setProperty name="person" property="name" value='<%= request.getParameter("username")%>'/>&ndash;%&gt;--%>
           <%--&lt;%&ndash;the same&ndash;%&gt;--%>
           <%--<jsp:setProperty name="person" property="name" param="username"/>--%>
           <%--<jsp:setProperty name="person" property="empId" param="id"/>--%>
       <%--</jsp:useBean>--%>
        <%--Person name is : <jsp:getProperty name="person" property="name"/>--%>
        <%--Employee ID is : <jsp:getProperty name="person" property="empId"/>--%>
    <%--</body>--%>
<%--</html>--%>


<html>
    <body>
        <jsp:useBean id="person" type="com.example.Person" class="com.example.Employee" scope="request">
            <%--<jsp:setProperty name="person" property="name"/>--%>
            <%--The same--%>
            <jsp:setProperty name="person" property="*"/>
            <%--<jsp:setProperty name="person" property="empId" value='<%= Integer.valueOf(request.getParameter("empId"))%>'/>--%>
        </jsp:useBean>
        Person name is : <jsp:getProperty name="person" property="name"/>
        Employee ID is : <jsp:getProperty name="person" property="empId"/>
    </body>
</html>
