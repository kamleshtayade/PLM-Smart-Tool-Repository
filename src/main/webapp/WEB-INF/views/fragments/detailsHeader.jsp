<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<jsp:include page="../fragments/headTag.jsp" />
<meta charset="UTF-8">
<title>PLM Smart Tool</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>

<!-- Main content -->
	<section class="content">

		<div class="col-lg-3 col-md-6">
			<div class="panel panel-success">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-comments fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:set var="abc" value="OPEN" />
									<c:forEach items="${plmDiagnose1}" var="issue"
										varStatus="status">
										<c:if test="${abc eq issue.itemStatus}">
											<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
									<c:out value="${counter1}" />
								</h3>
							</div>
							<div>Total Open Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#openIssue"> More info </a></span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>

		<div class="col-lg-3 col-md-6">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-comments fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:set var="abc" value="CLOSED" />
									<c:forEach items="${plmDiagnose1}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
										<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
									<c:out value="${counter1}" />
								</h3>
							</div>
							<div>Total Closed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#closedIssue"> More info </a></span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
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
							<i class="fa fa-comments fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:set var="abc" value="FIXED" />
									<c:forEach items="${plmDiagnose1}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
										<c:set var="counter1" value="${counter1 + 1}" />
									</c:if>
									</c:forEach>
									<c:out value="${counter1}" />
								</h3>
							</div>
							<div>Total Fixed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#FixedIssue"> More info </a></span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
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
							<i class="fa fa-comments fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">
								<h3>
									<c:set var="counter1" value="0" />
									<c:forEach items="${plmDiagnose1}" var="issue"
										varStatus="status">
										<c:set var="counter1" value="${counter1 + 1}" />
									</c:forEach>
									<c:out value="${counter1}" />
								</h3>
							</div>
							<div>Total Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#allIssue"> More info </a></span> <span class="pull-right"><i
							class="fa fa-arrow-circle-right"></i></span>
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
								<c:set var="abc" value="OPEN" />
								<c:forEach items="${plmDiagnose1}" var="issue" varStatus="status">
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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
								<c:set var="abc" value="CLOSED" />
								<c:forEach items="${plmDiagnose1}" var="issue" varStatus="status">
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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
								<c:set var="abc" value="FIXED" />
								<c:forEach items="${plmDiagnose1}" var="issue" varStatus="status">
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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
								
								<c:forEach items="${plmDiagnose1}" var="issue" varStatus="status">
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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
<!-- 		End here--Fixed issue details -->
	</section>