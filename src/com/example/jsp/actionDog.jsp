<%@ page import="com.example.Employee" %>
<html>
    <body>
        <jsp:useBean id="employee" class="com.example.Employee" scope="request"/>
        <%--Dog's name is: <jsp:getProperty name="employee" property="dog"/>--%>
        <br/>
        <%--or name is through jsp expression: <%= ((Employee)request.getAttribute("employee")).getDog().getName()%>--%>
        <br>
        <%--the same through EL--%>
        Dog name is through EL: ${employee.dog.name} <br>
        Employee name is through EL: ${employee["name"]} <br>

        <h5> Array test</h5>
        The array is: ${array} <br>
        The array of 0 is: ${array[0]} <br>
        The array of 1 is: ${array["1"]} <br>
        <%--The array of 2 is: ${array["two"]} <br>--%>

        <h5> List test <h5/>
        The list: ${list}<br>
        The list value 1 is: ${list[0]}

        <h5>Map test<h5/>
            The map is: ${map}<br>
            The map key3 is: ${map["key3"]}<br>
            The map key1 from attribute is: ${map[atr]}<br>
    </body>
</html>
