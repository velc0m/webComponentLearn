<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <body>
        <p>welcome</p>
        <%--<% if (request.getParameter("user") == null) {%>
        <jsp:forward page="hadleit.jsp"/>
        <%}%>--%>
        <c:if test = "${empty param.user}">
            <jsp:forward page="hadleit.jsp"/>
        </c:if>
        <p>Hello EL:${pageContext.request.getParameter("user")}</p>
        try out with null: <c:out value="${param.user2}"/>
        <p>Hello tags: <c:out value="${param.user}"/></p>
        <p>Hello tags with null and default var1: <c:out value="${param.user2}" default="guest"/></p>
        <%--The same--%>
        <p>Hello tags with null and default var2: <c:out value="${param.user2}">guest</c:out></p>
    </body>
</html>