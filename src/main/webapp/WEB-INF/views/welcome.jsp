<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html lang="en">

<jsp:include page="fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="fragments/bodyHeader.jsp"/>
    <spring:message var="app_name" code="application_name" htmlEscape="false" />
  	<spring:message var="title" code="welcome_titlepane" arguments="${app_name}" htmlEscape="false" />
    <h2>
      <spring:message code="welcome_h3" arguments="${app_name}" />
    </h2>
    <p>
      <spring:message code="welcome_text" />
    </p>
    <spring:url value="/resources/images/zensarlogo.png" htmlEscape="true" var="logoImage"/>
    <img src="${logoImage}"/>

    <jsp:include page="fragments/footer.jsp"/>

</div>
</body>

</html>
