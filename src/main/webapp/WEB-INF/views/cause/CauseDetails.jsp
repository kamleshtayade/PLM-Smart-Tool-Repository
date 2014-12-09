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
<title>Insert title here</title>
</head>
<body>
	<div align="center">

		<b>Issue ID::</b>&nbsp;
		<c:forEach items="${causeSelections}" var="cause" varStatus="status">
			<c:if test="${status.index == 0}">
				<c:out value="${cause.issueId}">
				</c:out>
			</c:if>
		</c:forEach>
	</div>
	<br>

	<datatables:table filter="false" id="causeDetail"
		data="${causeSelections}" row="causeDetail" theme="bootstrap3"
		cssClass="table table-striped bordered" pageable="false" info="false"
		filterable="false" ext="bootstrap3-responsive">

		<datatables:column title="Cause" property="problem" />
		<datatables:column title="Solution" property="solution" />

	</datatables:table>

</body>
</html>