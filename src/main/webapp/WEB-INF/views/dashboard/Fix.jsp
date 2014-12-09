<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<!DOCTYPE html>
<html>

<head>
<title>Bootstrap version 3.1 Modal with remote content</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap core CSS -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.1.0/css/bootstrap.css"
	rel="stylesheet" media="screen">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  	  <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
      <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.2.0/respond.js"></script>	
    <![endif]-->
</head>
<body>

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
				Monitoring Dashboard <small>place holder</small>
			</h1>
			<ol class="breadcrumb">
				<li class="active"><a href="#">Date - <%=date%></a></li>
			</ol>
		</section>
		<!-- Main content -->

		


		<jsp:include page="../fragments/footer.jsp" />
	</aside>
</body>

</html>
