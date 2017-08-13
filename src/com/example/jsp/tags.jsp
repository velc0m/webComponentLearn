<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
<html>
    <body>
        <table>
        <%
            String[] cities = (String[])request.getAttribute("cities");
            String currentCity = null;
            for (String city : cities) {
                currentCity = city;
        %>
            <tr>
                <td><%= currentCity%></td>
            </tr>
        <%}%>
        </table>
    </body>
</html>--%>

<%--The same with tags forEach--%>

<html>
    <body>
        <strong>Cities:</strong>
        <br>
        <table>
            <%--CHECK!!!! varStatus--%>
            <c:forEach var="city" items="${requestScope.cities}">
                <tr>
                    <td>
                        ${city}
                    </td>
                </tr>
            </c:forEach>

                <tr>
                    <td>
                        MOVIES
                    </td>
                </tr>

            <c:forEach var = "movies" items = "${requestScope.video}">
                <c:forEach var = "movie" items = "${movies}">
                    <tr>
                        <td>
                            ${movie}
                        </td>
                    </tr>
                </c:forEach>
            </c:forEach>

                <tr>
                    <td>
                        Counts from 1 to 5
                    </td>
                </tr>

            <c:forEach var = "number" items = "${requestScope.counts}" begin = "1" end = "5">
                <tr>
                    <td>
                        ${number}
                    </td>
                </tr>
            </c:forEach>


                <tr>
                    <td>
                        Counts all
                    </td>
                </tr>

                <c:forEach var = "number" items = "${requestScope.counts}">
                    <tr>
                        <td>
                                ${number}
                        </td>
                    </tr>
                </c:forEach>
        </table>
    </body>
</html>