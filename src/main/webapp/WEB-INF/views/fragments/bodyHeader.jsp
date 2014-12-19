<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../fragments/headTag.jsp" />
<meta charset="UTF-8">
<title>PLM Smart Tool</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css"
	rel="stylesheet">
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<!-- Header start -->
		<a href="#" class="logo"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
			<span><spring:message code="tool_name" /></a>
		<nav class="navbar navbar-static-top" role="navigation">
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="glyphicon glyphicon-user"></i>Dipika <i class="caret"></i></span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"></i><img
								src="../resources/images/avatar3.png" class="img-circle"
								alt="User Image" />
								<p>
									Dipika Disale - Web Developer <small>Member since
										Dec.2012</small>
								</p></li>
							<!-- Menu Body -->
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-right">
									<a href="#" class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
			<!-- navbar-right div -->
		</nav>
	</header>
	<!-- Header end -->





	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
<!-- 					<div class="pull-left image"> -->
<!-- 						<img src="../resources/images/avatar3.png" class="img-circle" -->
<!-- 							alt="User Image" /> -->
<!-- 					</div> -->
					<div class="pull-left info">
						<p>Hello Dipika</p>
						
					</div>
				</div>
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">

					<li class="active"><a class="btn btn-default"
						href="../dashboard/home.html"> <span> <spring:message
									code="dash_board" /></span>
					</a></li>
					<li class="active"><a class="btn btn-default"
						href="../dashboard/issue"><span><spring:message
									code="issue" /></span> </a></li>

<!-- 										<li class="active"><a class="btn btn-default" -->
<%-- 											href="../dashboard/fix.html"><span><spring:message --%>
<%-- 														code="fix" /></span> </a></li>  --%>

<!-- 					<li class="active"><a class="btn btn-default" -->
<%-- 						href="../dashboard/job.html"><span><spring:message --%>
<%-- 									code="job" /></span> </a></li> --%>

					<li class="active"><a class="btn btn-default"
						href="../dashboard/report.html"><spring:message code="report" /></a></li>

					<li class="active"><a class="btn btn-default"
						href="../dashboard/admin.html"> <span> <spring:message
									code="admin" /></span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
	</div>