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

<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<spring:message code="dashboard_title" />
		</h1>
		<ol class="breadcrumb">
			<li class="active"><font color='blue'><b><%=date%></b></font></li>
		</ol>
		</ol>
	</section>
<%-- 	<jsp:include page="../fragments/detailsHeader.jsp" /> --%>
	<!-- Main content -->
	<section class="content">

		<div class="col-lg-3 col-md-6">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="glyphicon glyphicon-check"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:set var="abc" value="OPEN" />
									<c:forEach items="${plmDiagnose}" var="issue"
										varStatus="status">
										<c:if test="${abc eq issue.itemStatus}">
											<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
									<font color='red'><b>8</b></font>
								</h3>
							</div>
							<div>Total Open Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#openIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="panel panel-success">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="glyphicon glyphicon-new-window"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:set var="abc" value="CLOSED" />
									<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
										<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
										<font color='green'><b>1</b></font>
								</h3>
							</div>
							<div>Closed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#closedIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
								<i class="glyphicon glyphicon-thumbs-up"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:set var="abc" value="FIXED" />
									<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
										<c:set var="counter1" value="${counter1 + 1}" />
									</c:if>
									</c:forEach>
										<font color='blue'><b>1</b></font>
								</h3>
							</div>
							<div>Fixed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#FixedIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
								<i class="glyphicon glyphicon-align-justify"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:forEach items="${plmDiagnose}" var="issue"
										varStatus="status">
										<c:set var="counter1" value="${counter1 + 1}" />
									</c:forEach>
										<font color='white'><b>10</b></font>
								</h3>
							</div>
							<div>Total Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#allIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
<!-- 		For Open issue details -->
		<!-- Modal -->
		<div class="modal fade" id="openIssue" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">Open Issue Details
						<button type="button" class="btn btn-info pull-right btn-sm RbtnMargin " align='right' valign='top' data-dismiss="modal">x</button>
						</div>
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
								<c:set var="abc" value="OPEN" />
								<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
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
					
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
<!-- 		End here-- Open issue details -->

<!-- For Closed issue details -->
		<div class="modal fade" id="closedIssue" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">Open Issue Details
						<button type="button" class="btn btn-info pull-right btn-sm RbtnMargin " align='right' valign='top' data-dismiss="modal">x</button>
						</div>
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
								<c:set var="abc" value="CLOSED" />
								<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
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
					
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
<!-- 		End here--Closed issue details -->

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- /.row -->
			<div class="col-xs-12">
				<!-- /.col-xs-12 -->
				<div class="box">
					<!-- /.box -->
					<datatables:table id="plmSmart" data="${plmSelections}"
						row="plmSmart" theme="bootstrap3"
						cssClass="table table-striped bordered" pageable="true"
						paginationType="listBox" info="true" export="xls,pdf"
						ext="bootstrap3-responsive">
						<datatables:column title="Program" property="programType"
							data-class="expand" />
						<datatables:column title="Processed" property="processedRecords" />
						<datatables:column title="Failed" display="html">
							<spring:url value="../dashboard/{id}.html" var="idUrl"
								htmlEscape="true">
								<spring:param name="id" value="${plmSmart.id}" />
							</spring:url>
							<c:if test="${plmSmart.failedRecords != 0}">
								<a href="#" target="_blank"
									onclick="javascript:void window.open('${fn:escapeXml(idUrl)}',
								'1415711298418','width=700,height=400,toolbar=0,menubar=0,location=0,status=0,scrollbars=0,resizable=1,left=580,top=240');
								return false;">
									<c:out value="${plmSmart.failedRecords}" />
								</a>
							</c:if>
							<c:if test="${plmSmart.failedRecords == 0}">
								<c:out value="${plmSmart.failedRecords}" />
							</c:if>
						</datatables:column>
						<datatables:column title="Notified" property="notifiedRecords"
							data-hide="phone,tablet" />
					</datatables:table>
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col-xs-12 -->
		</div>
		<!-- /.row -->
	</section>
	
	<section>
	<!-- Modal -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">Open Issue Details
						<button type="button" class="btn btn-info pull-right btn-sm RbtnMargin " align='right' valign='top' data-dismiss="modal">x</button>
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered">
								<tr>
									<td><b><c:out value="ID" /></b></td>
									<td><b><c:out value="Org Code" /></b></td>
									<td><b><c:out value="ECO" /></b></td>
									<td><b><c:out value="Item NO" /></b></td>
								</tr>
								<c:out value="${issueSelections1}"></c:out>
								<c:forEach items="${issueSelections1}" var="issue" varStatus="status">
										<tr>
											<td><c:out value="${issue.id}" /></td>
											<td><c:out value="${issue.orgCode}" /></td>
											<td><c:out value="${issue.eco}" /></td>
											<td><c:out value="${issue.itemNo}" /></td>
										</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</section>
	<jsp:include page="../fragments/footer.jsp" />
</aside>

</html>
