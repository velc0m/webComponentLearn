<html>

    <%--<%@ include file="include.jsp"%>--%>
    <jsp:include page="include.jsp">
        <jsp:param name="reqparam" value="this is for include only"/>
    </jsp:include>
    <body>
        The main body starts here!!!
        Request param Name is: ${param.name}<br>
        Request param ID is: ${param.empId}<br>
        First food is: ${paramValues.food[0]}<br>
        Second food is: ${paramValues.food[1]}<br>

        Host is: ${header.host}

        Request method is = ${pageContext.request.method}
    </body>
</html>
