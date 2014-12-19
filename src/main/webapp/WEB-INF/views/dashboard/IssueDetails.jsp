<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>

<%--@author ddisale--%>

<html lang="en">
<jsp:include page="../fragments/headTag.jsp" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Details</title>
</head>
<body>
	<div align="center">
		<b>Error Type::</b>&nbsp;
		<c:forEach items="${issueSelections}" var="issue" varStatus="status">
			<c:if test="${status.index == 0}">
				<c:out value="${issue.errorType}">
				</c:out>
			</c:if>
		</c:forEach>
	</div>

	<br>
	<datatables:table filter="false" id="issueDetail"
		data="${issueSelections}" row="issueDetails" theme="bootstrap3"
		cssClass="table table-striped bordered" pageable="true"
		paginationType="listBox" info="true" export="xls,pdf"
		ext="bootstrap3-responsive">
		<datatables:column title="Issue ID" property="id" />
		<datatables:column title="ECO" property="eco" />
		<datatables:column title="ITEM" property="itemNo" />
		<datatables:column title="ORG" property="orgCode" />
	</datatables:table>
</body>
</html>