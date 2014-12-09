<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    <h2>Users</h2>
    
    <datatables:table id="users" data="${selections}" cdn="true" row="user" theme="bootstrap2" 
                      cssClass="table table-striped" paginate="false" info="false" export="pdf">
        <datatables:column title="Name" cssStyle="width: 150px;" display="html">
            <spring:url value="/users/{userId}.html" var="userUrl">
                <spring:param name="userId" value="${user.id}"/>
            </spring:url>
            <a href="${fn:escapeXml(userUrl)}"><c:out value="${user.firstName} ${user.lastName}"/></a>
        </datatables:column>
        <datatables:column title="Name" display="pdf">
            <c:out value="${user.firstName} ${user.lastName}"/>
        </datatables:column>
        <datatables:column title="Email" property="email" cssStyle="width: 200px;"/>
        <datatables:column title="Status" property="status" cssStyle="width: 200px;"/>
      	<datatables:column title="Role" property="role" cssStyle="width: 200px;"/>
        <datatables:export type="pdf" cssClass="btn btn-small" />
        <datatables:export type="csv" cssClass="btn btn-small" />
    </datatables:table>
    
    <jsp:include page="../fragments/footer.jsp"/>

</div>
</body>

</html>
