<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<%@ taglib prefix="dandelion" uri="http://github.com/dandelion"%>
<!-- set bundle -->
<dandelion:bundle includes="blueye,bootstrap3" />
<dandelion:asset cssExcludes="datatables" />
<!DOCTYPE html>
<html>
<%
	java.util.Date date = new java.util.Date();
%>
<jsp:include page="../fragments/headTag.jsp" />
<jsp:include page="../fragments/bodyHeader.jsp" />

<aside class="right-side">
	<section class="content-header">
		<h1>
			<spring:message code="issue_detail_title" />
		</h1>
		<ol class="breadcrumb">
			<li class="active"><a href="#">Date - <%=date%></a></li>
		</ol>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<datatables:table id="plmDiagnosesis" data="${plmDiagnose}"
						row="issueDetails" theme="bootstrap3"
						cssClass="table table-striped bordered" pageable="true"
						paginationType="listBox" info="true" export="xls,pdf"
						ext="bootstrap3-responsive">

						<datatables:column title="Issue ID" data-class="expand">
							<spring:url value="../cause/{id}.html" var="idUrl"
								htmlEscape="true">
								<spring:param name="id" value="${issueDetails.id}" />
							</spring:url>
							<a href="#" target="_blank"
								onclick="javascript:void window.open('${fn:escapeXml(idUrl)}',
								'1415711298418','width=700,height=400,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=1,left=580,top=240');
								return false;">
								<c:out value="${issueDetails.id}" />
							</a>
						</datatables:column>
						<datatables:column title="Program" property="errorType"
							data-hide="phone,tablet" />
						<datatables:column title="Orgnisation Id" property="orgCode"
							data-hide="phone,tablet" />
						<datatables:column title="ECO" property="eco" />
						<datatables:column title="Item No" property="itemNo" />
						<datatables:column title="Issue Status" property="itemStatus"
							data-hide="phone,tablet" />
					</datatables:table>
				</div>
			</div>
		</div>
	</section>

	<section class="content">
		<div align="center">
			<c:set var="counter1" value="0" />
			<c:set var="abc" value="CLOSED" />
			<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
				<c:if test="${abc ne issue.itemStatus}">
					<c:set var="counter1" value="${counter1 + 1}" />
				</c:if>
			</c:forEach>
		</div>
		<b>Total Open Issue at the End of Date -<%=date%> are::
		</b>&nbsp;<a data-toggle="modal" data-target="#myModal"><c:out
				value="${counter1}" /></a>
				
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">Open Issue Details</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered">
								<tr>
									<td><b><c:out value="ID" /></b></td>
									<td><b><c:out value="Org Code" /></b></td>
									<td><b><c:out value="ECO" /></b></td>
									<td><b><c:out value="Item NO" /></b></td>
									<td><b><c:out value="Item Status" /></b></td>
									<td><b><c:out value="Error Type" /></b></td>
									<td><b><c:out value="Last Update Date" /></b></td>
								</tr>
								<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc ne issue.itemStatus}">
										<tr>
											<td><c:out value="${issue.id}" /></td>
											<td><c:out value="${issue.orgCode}" /></td>
											<td><c:out value="${issue.eco}" /></td>
											<td><c:out value="${issue.itemNo}" /></td>
											<td><c:out value="${issue.itemStatus}" /></td>
											<td><c:out value="${issue.errorType}" /></td>
											<td><c:out value="${issue.lastUpdateDate}" /></td>
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
					</div>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</section>

	<jsp:include page="../fragments/footer.jsp" />
</aside>
</body>
</html>
