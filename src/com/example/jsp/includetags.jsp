<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="jsp/commentsprocess.jsp" method="post">
    Add comments:<br>
    <textarea name="input" cols = "40" rows="10"></textarea>
    <br>
    <input name="commentSubmit" type="submit" value="Add comment">
    <br>
    ${userType}
</form>
