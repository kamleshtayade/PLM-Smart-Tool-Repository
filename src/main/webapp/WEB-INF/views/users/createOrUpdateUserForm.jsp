<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="apps" tagdir="/WEB-INF/tags" %>


<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <c:choose>
        <c:when test="${user['new']}"><c:set var="method" value="post"/></c:when>
        <c:otherwise><c:set var="method" value="put"/></c:otherwise>
    </c:choose>

    <h2>
        <c:if test="${user['new']}">New </c:if> User
    </h2>
    <form:form modelAttribute="user" method="${method}" class="form-horizontal" id="add-user-form">
        <apps:inputField label="First Name" name="firstName"/>
        <apps:inputField label="Last Name" name="lastName"/>
        <apps:inputField label="Email" name="email"/>
        <div class="control-group">
            <apps:selectField label="Role" name="role" names="${roles}" size="1"/>
        </div>
        <div class="control-group">
            <apps:selectField label="Status" name="status" names="${statuses}" size="1"/>
        </div>

        <div class="form-actions">
            <c:choose>
                <c:when test="${user['new']}">
                    <button type="submit">Add User</button>
                </c:when>
                <c:otherwise>
                    <button type="submit">Update User</button>
                </c:otherwise>
            </c:choose>
        </div>
    </form:form>
</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>
