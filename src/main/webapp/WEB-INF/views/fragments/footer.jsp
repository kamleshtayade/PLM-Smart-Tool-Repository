<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<table class="footer">
	<tr>
		<td></td>
		<td align="right"><img
			src="<spring:url value="/resources/images/Footer.jpg" htmlEscape="true" />"
			alt="Zensar " /></td>
	</tr>
</table>

<!-- Scripts -->
<spring:url value="/webjars/jquery/2.1.1/jquery.js" var="jQuery" />
<script src="${jQuery}"></script>
<spring:url value="/webjars/bootstrap/3.3.1/js/bootstrap.min.js"
	var="bootstrap" />
<script src="${bootstrap}"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

