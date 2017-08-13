<html>
    <body>
        <%--Person name is: <%= ((Person)request.getAttribute("nameAtr")).getName() %>--%>
       <jsp:useBean id="nameAtr" type="com.example.Employee" scope="request">
           <jsp:setProperty name="nameAtr" property="name" value="jsp employee name"/>
       </jsp:useBean>
        Person name is : <jsp:getProperty name="nameAtr" property="name"/>
    </body>
</html>