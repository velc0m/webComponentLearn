<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <hr>
        <strong>Member comments</strong>
        <hr>
        ${comm}
        <hr>
        <c:if test="${sessionScope.userType eq 'admin'}">
            <jsp:include page="includetags.jsp">
                <jsp:param name="userType" value="It is hidden information"/>
            </jsp:include>
        </c:if>

        <c:choose>
            <c:when test="${userType == 'admin'}">
                Hello admin
            </c:when>
            <c:otherwise>
                Ooopss!
            </c:otherwise>
        </c:choose>
        <br>
        <c:set var = "setvar" value = "set value"/>
        <c:set var = "setvar2" scope="application">
            set value 2
        </c:set>

        ${setvar}<br>
        ${setvar2}<br>

        <c:set target = "${pageMap}" property = "new" value = "this is new property"/>

        ${pageMap}<br>
        <hr>
        test remove
        <c:set var = "remvar" scope = "request" value = "test value for remove var"/>
        this is it: ${remvar}<br>

        <c:remove var = "remvar"/>
        and up: ${remvar}<br>

        <hr>
        Parameters go with spaces. This is bad!<br>
        <c:set var = "first" value = "Benjiamin second"/>
        <c:set var = "last" value = "Kingston first"/>
        <c:url var = "gourl" value = "includetags.jsp?${first}&${last}"/>

        <strong>${gourl}</strong><br>

        So good.<br>
        <c:url var = "gourl2" value = "includetags.jsp">
            <c:param name="firstname" value="${first}"/>
            <c:param name="lastname" value="${last}"/>
        </c:url>

        <strong>${gourl2}</strong>
    </body>
</html>
