<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<!DOCTYPE html>
<html>

<%
	java.util.Date date = new java.util.Date();
%>
<script type="text/javascript">
	$(function() {
		$('#example').popover();
	});
</script>

<link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />

<jsp:include page="../fragments/headTag.jsp" />
<jsp:include page="../fragments/bodyHeader.jsp" />
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<spring:message code="fix" />
			<small>place holder</small>
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
						<datatables:column title="Error Message">
							<c:set var="str" value="${issueDetails.errorMessage}" />
							<c:if test="${not empty str}">
								<div>
									<ul class="nav navbar-nav">
										<!-- User Account: style can be found in dropdown.less -->
										<li ><a href="#" class="dropdown-toggle"
											data-toggle="dropdown"></i> <font color='green'><i
													class="glyphicon glyphicon-new-window"></i></font></a>
											<ul class="dropdown-menu">
												<!-- User image -->
												<li class="user-header bg-light-pink">
													<c:out value="${issueDetails.errorMessage}" />
												</li>
												<!-- Menu Body -->
												<!-- Menu Footer-->

											</ul></li>
									</ul>
								</div>
							</c:if>
							<c:if test="${empty str}">
								<div align='center'>
									<ul class="nav navbar-nav">
										<!-- User Account: style can be found in dropdown.less -->
										<li><a href="#"></i> <i
												class="glyphicon glyphicon-new-window"></i></a>
											<ul class="dropdown-menu">
												<!-- User image -->
												<c:out value="${issueDetails.errorMessage}" />
												<!-- Menu Body -->
												<!-- Menu Footer-->

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

	<div class="navbar-right">
		<ul class="nav navbar-nav">
			<!-- User Account: style can be found in dropdown.less -->
			<li class="dropdown user user-menu"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"> <i
					class="glyphicon glyphicon-new-window"></i><i class="caret"></i></span>
			</a>
				<ul class="dropdown-menu">
					<!-- User image -->
					<li class="user-header bg-light-pink"></i></li>
				</ul></li>
		</ul>
	</div>
	<!-- navbar-right div -->



	<jsp:include page="../fragments/footer.jsp" />
</aside>
</html>
