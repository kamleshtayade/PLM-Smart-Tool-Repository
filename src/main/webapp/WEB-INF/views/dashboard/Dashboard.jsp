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
			<li class="active"><a href="#">Date - <%=date%></a></li>
		</ol>
	</section>
	<!-- Main content -->

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- /.box-header -->
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
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
	</section>
	<jsp:include page="../fragments/footer.jsp" />
</aside>
</body>
</html>
