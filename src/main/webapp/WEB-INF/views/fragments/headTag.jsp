<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <spring:message var="app_name" code="application_name" htmlEscape="false" />
    <title><spring:message code="appstitle" arguments="${app_name}" /></title>
    <meta name="viewpoint" content="width=device-width, initial-scale=1.0">

    <spring:url value="/webjars/bootstrap/3.3.1/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
        
  <%--   icons --%>
    <spring:url value="/resources/css/css/ionicons.css" var="ioniconCss"/>
    <link href="${ioniconCss}" rel="stylesheet"/>
   
<%--       Theme Style --%>
<%--     <spring:url value="/resources/css/css/AdminLTE.css" var="adminLTECss"/> --%>
<%--     <link href="${adminLTECss}" rel="stylesheet"/> --%>
    
    <spring:url value="/resources/css/css/bootstrap3-wysihtml5.min.css" var="slideLTECss"/>
    <link href="${slideLTECss}" rel="stylesheet"/>
    
    
<%-- 	<spring:url value="/webjars/bootstrap/3.3.1/css/bootstrap-theme.min.css" var="bootstrapThemeCss"/> --%>
<%--     <link href="${bootstrapThemeCss}" rel="stylesheet"/> --%>
	
    <spring:url value="/resources/css/app.css" var="appCss"/>
    <link href="${appCss}" rel="stylesheet"/>

<%--      <spring:url value="/resources/css/css/font-awesome.css" var="fontCss"/> --%>
<%--     <link href="${fontCss}" rel="stylesheet"/> --%>
    
</head>


