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

<jsp:include page="../fragments/headTag.jsp" />
<jsp:include page="../fragments/bodyHeader.jsp" />

<aside class="right-side">
	<section class="content-header">
		<h1>
			<spring:message code="issue_detail_title" />
		</h1>
		<ol class="breadcrumb">
			<li class="active"><a href="#">Date - 19th Nov 2014</a></li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">

					<datatables:table id="plmDiagnosesis" data="${plmDiagnose}"
						row="plmSmart" theme="bootstrap3" cssClass="table table-striped"
					    paginationType="listBox" info="true"
						export="xls,pdf" ext="bootstrap3-responsive">

						<datatables:column title="Issue ID" data-class="expand">
							<spring:url value="../dashboard/issueContent" var="issueUrl">
								<spring:param name="id" value="${plmSmart.id}" />
							</spring:url>
							<a href="${fn:escapeXml(issueUrl)}"><c:out
									value="${plmSmart.id}" /></a>
						</datatables:column>
						<datatables:column title="Program" property="errorType"
							data-hide="phone,tablet" />
						<datatables:column title="Orgnisation Id" property="orgId"
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
		
					<div class="panel panel-info">
						<div class="panel-heading">Diagnosis Information</div>
						<div class="panel-body">
			<datatables:table filter="false" id="diagnosesis" data="${plmDiagnose}"
				row="plmDiagnose" theme="bootstrap3"
				cssClass="table table-striped bordered" pageable="true" paginationType="listBox" info="true"
				export="xls,pdf" ext="bootstrap3-responsive">
				
				<datatables:column title="Issue ID" property="id"/>
				<datatables:column title="ECO" property="eco"/>
				<datatables:column title="ITEM" property="itemNo"/>
				<datatables:column title="ORG" property="orgId"/>
				
			</datatables:table>

						</div>
					</div>
					
				
	</section>
	<jsp:include page="../fragments/footer.jsp" />
</aside>
</body>
</html>
