<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<!DOCTYPE html>
<html>

<%
	java.util.Date date = new java.util.Date();
%>
<jsp:include page="../fragments/headTag.jsp" />
<jsp:include page="../fragments/bodyHeader.jsp" />

<!-- font Awesome -->
<link href="../css/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<spring:message code="issue" />
			<small>place holder</small>
		</h1>
		<%-- 		<div class="well well-sm pull-right btn-sm RbtnMargin"><%=date%></div> --%>
		<ol class="breadcrumb">
			<li class="active"><font color='blue'><b><%=date%></b></font></li>
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
									<font color='red'><b><c:out value="${counter1}" /></b></font>
								</h3>
							</div>
							<div>Total Open Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left"> <a data-toggle="modal"
							data-target="#openIssue"> More info </a></span> <span class="pull-right">
							<i class="glyphicon glyphicon-hand-right"></i>
						</span>
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
									<c:forEach items="${plmDiagnose}" var="issue"
										varStatus="status">
										<c:if test="${abc eq issue.itemStatus}">
											<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
									<font color='green'><b><c:out value="${counter1}" /></b></font>
								</h3>
							</div>
							<div>Closed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left"> <a data-toggle="modal"
							data-target="#closedIssue"> More info </a></span> <span
							class="pull-right"> <i
							class="glyphicon glyphicon-hand-right"></i></span>
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
									<c:forEach items="${plmDiagnose}" var="issue"
										varStatus="status">
										<c:if test="${abc eq issue.itemStatus}">
											<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
									<font color='blue'><b><c:out value="${counter1}" /></b></font>
								</h3>
							</div>
							<div>Fixed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left"> <a data-toggle="modal"
							data-target="#FixedIssue"> More info </a></span> <span
							class="pull-right"> <i
							class="glyphicon glyphicon-hand-right"></i></span>
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
									<font color='white'><b><c:out value="${counter1}" /></b></font>
								</h3>
							</div>
							<div>Total Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left"> <a data-toggle="modal"
							data-target="#allIssue"> More info </a></span> <span class="pull-right">
							<i class="glyphicon glyphicon-hand-right"></i>
						</span>
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
						<div class="panel-heading">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							Open Issue Details
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
						<div class="panel-heading">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							Closed Issue Details
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

		<!-- For Fixed issue details -->
		<div class="modal fade" id="FixedIssue" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							Fixed Issue Details
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
								<c:set var="abc" value="FIXED" />
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
		<!-- 		End here--Fixed issue details -->

		<!-- For Fixed issue details -->
		<div class="modal fade" id="allIssue" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							All Issue Details
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
								<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<tr>
										<td><c:out value="${issue.id}" /></td>
										<td><c:out value="${issue.orgCode}" /></td>
										<td><c:out value="${issue.eco}" /></td>
										<td><c:out value="${issue.itemNo}" /></td>
										<td><c:out value="${issue.itemStatus}" /></td>
										<td><c:out value="${issue.errorType}" /></td>
										<td><c:out value="${issue.lastUpdateDate}" /></td>
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
		<!-- 		End here--Fixed issue details -->
	</section>


	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<datatables:table id="plmDiagnosesis" data="${plmDiagnose}"
						row="issueDetails" theme="bootstrap3"
						cssClass="table table-striped table-bordered table-hover" pageable="true"
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
						<datatables:column title="Error">
							<c:set var="str" value="${issueDetails.errorMessage}" />
							<c:if test="${not empty str}">


								<div>
									<ul class="nav navbar-nav">
										<!-- User Account: style can be found in dropdown.less -->
										<li class="dropdown user user-menu"><a href="#"
											class="dropdown-toggle" data-toggle="dropdown"> 
											<font color='green'>
											<i class="glyphicon glyphicon-new-window"></i></font>
										</a>
											<ul class="dropdown-menu">
												<!-- User image -->
												<li class="user-header bg-light-pink">
												<c:out value="${issueDetails.errorMessage}" />
												</li>
											</ul></li>
									</ul>
								</div>
								
								
<!-- 								<div> -->
<!-- 									<ul class="nav navbar-nav"> -->
<!-- 										<li><a href="#" class="dropdown-toggle" -->
<!-- 											data-toggle="dropdown"></i> <font color='green'><i -->
<!-- 													class="glyphicon glyphicon-new-window"></i></font></a> -->
<!-- 											<ul class="dropdown-menu"> -->
<!-- 												User image -->
<!-- 												<p> -->
<%-- 													<c:out value="${issueDetails.errorMessage}" /> --%>
<!-- 												</p> -->
<!-- 											</ul></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
							</c:if>
							<c:if test="${empty str}">
								<div align='center'>
									<ul class="nav navbar-nav">
										<li><a href=""></i> <i
												class="glyphicon glyphicon-new-window"></i></a>
											<ul class="dropdown-menu">
												<!-- User image -->
												<c:out value="${issueDetails.errorMessage}" />
											</ul></li>
									</ul>
								</div>
							</c:if>
						</datatables:column>
						<datatables:column title="Org Id" property="orgCode"
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
	<jsp:include page="../fragments/footer.jsp" />
</aside>

