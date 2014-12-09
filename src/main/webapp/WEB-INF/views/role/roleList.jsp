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
    <h2>Roles</h2>
    
    <datatables:table id="role" data="${selections}" cdn="true" row="role" theme="bootstrap2" 
                      cssClass="table table-striped" paginate="false" info="false" export="pdf">
        <datatables:column title="Name" cssStyle="width: 150px;" display="html">
            <spring:url value="/role/{roleId}.html" var="roleUrl">
                <spring:param name="roleId" value="${role.id}"/>
            </spring:url>
            <a href="${fn:escapeXml(roleUrl)}"><c:out value="${role.name}"/></a>
        </datatables:column>
        <datatables:column title="Name" display="pdf">
            <c:out value="${role.name}"/>
        </datatables:column>
        <datatables:export type="pdf" cssClass="btn btn-small" />
        <datatables:export type="csv" cssClass="btn btn-small" />
    </datatables:table>
    
    <jsp:include page="../fragments/footer.jsp"/>

</div>
</body>

</html>
