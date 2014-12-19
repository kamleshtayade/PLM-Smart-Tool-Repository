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
<jsp:include page="../fragments/headTag.jsp" />
<jsp:include page="../fragments/bodyHeader.jsp" />



<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			In Progress<small><spring:message code="report_title"/> </small>
		</h1>
		<ol class="breadcrumb">
			<li class="active"><font color='blue'><b><%=date%></b></font></li>
		</ol>
		</ol>
	</section>
	<section>
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
									<font color='red'><b>8</b></font>
								</h3>
							</div>
							<div>Total Open Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#openIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
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
									<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
										<c:set var="counter1" value="${counter1 + 1}" />
										</c:if>
									</c:forEach>
										<font color='green'><b>1</b></font>
								</h3>
							</div>
							<div>Closed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#closedIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
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
									<c:forEach items="${plmDiagnose}" var="issue" varStatus="status">
									<c:if test="${abc eq issue.itemStatus}">
										<c:set var="counter1" value="${counter1 + 1}" />
									</c:if>
									</c:forEach>
										<font color='blue'><b>1</b></font>
								</h3>
							</div>
							<div>Fixed Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#FixedIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
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
										<font color='white'><b>10</b></font>
								</h3>
							</div>
							<div>Total Issues</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">
						<a data-toggle="modal" data-target="#allIssue"> More info </a></span> <span class="pull-right">
						<i class="glyphicon glyphicon-hand-right"></i></span>
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
						<div class="panel-heading">Open Issue Details
						<button type="button" class="btn btn-info pull-right btn-sm RbtnMargin " align='right' valign='top' data-dismiss="modal">x</button>
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
						<div class="panel-heading">Open Issue Details
						<button type="button" class="btn btn-info pull-right btn-sm RbtnMargin " align='right' valign='top' data-dismiss="modal">x</button>
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

<h3>Reports In Progress</h3>
	</section>
	<!-- Main content -->

<!-- 	<section class="content"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-xs-12"> -->
<!-- 				<div class="box"> -->
<!-- 					<div class="box-header"> -->
<!-- 						<h3 class="box-title">Data Table</h3> -->
<!-- 					</div> -->

<!-- 					/.box-header -->
<!-- 					Bar chart -->
<!--                             <div class="box box-primary"> -->
<!--                                 <div class="box-header"> -->
<!--                                     <i class="fa fa-bar-chart-o"></i> -->
<!--                                     <h3 class="box-title">Bar Chart: Day wise Report</h3> -->
<!--                                 </div> -->
<!--                                 <div class="box-body"> -->
<!--                                     <div id="bar-chart" style="height: 300px;"></div> -->
<!--                                 </div>/.box-body -->
<!--                             </div>/.box -->
                            
<!--                             Line chart -->
<!--                             <div class="box box-primary"> -->
<!--                                 <div class="box-header"> -->
<!--                                     <i class="fa fa-bar-chart-o"></i> -->
<!--                                     <h3 class="box-title">Line Chart: Weekly Report</h3> -->
<!--                                 </div> -->
<!--                                 <div class="box-body"> -->
<!--                                     <div id="line-chart" style="height: 300px;"></div> -->
<!--                                 </div>/.box-body -->
<!--                             </div>/.box -->
                            
<!-- 						  Donut chart -->
<!--                             <div class="box box-primary"> -->
<!--                                 <div class="box-header"> -->
<!--                                     <i class="fa fa-bar-chart-o"></i> -->
<!--                                     <h3 class="box-title">Donut Chart: Monthly Report</h3> -->
<!--                                 </div> -->
<!--                                 <div class="box-body"> -->
<!--                                     <div id="donut-chart" style="height: 300px;"></div> -->
<!--                                 </div>/.box-body -->
<!--                             </div>/.box -->
<!-- 				</div> -->
<!-- 				/.box-body -->
<!-- 			</div> -->
<!-- 			<!-- /.box --> 
<!-- 		</div> -->
<!-- 	</section> -->
	<jsp:include page="../fragments/footer.jsp" />
	</aside>
	
	 <!-- FLOT CHARTS -->
	  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script src="../resources/js/jquery.flot.min.js" type="text/javascript"></script>
         <script src="../resources/js/jquery.flot.resize.min.js" type="text/javascript"></script>
          <script src="../resources/js/jquery.flot.pie.min.js" type="text/javascript"></script>
          <script src="../resources/js/jquery.flot.categories.min.js" type="text/javascript"></script>
        
	 <script type="text/javascript">
	 $(function() {
	var bar_data = {
                    data: [["January", 10], ["February", 8], ["March", 4], ["April", 13], ["May", 17], ["June", 9]],
                    color: "#3c8dbc"
                };
                $.plot("#bar-chart", [bar_data], {
                    grid: {
                        borderWidth: 1,
                        borderColor: "#f3f3f3",
                        tickColor: "#f3f3f3"
                    },
                    series: {
                        bars: {
                            show: true,
                            barWidth: 0.5,
                            align: "center"
                        }
                    },
                    xaxis: {
                        mode: "categories",
                        tickLength: 0
                    }
                });
                /* END BAR CHART */
                


                /*
                 * LINE CHART
                 * ----------
                 */
                //LINE randomly generated data

                var sin = [], cos = [];
                for (var i = 0; i < 14; i += 0.5) {
                    sin.push([i, Math.sin(i)]);
                    cos.push([i, Math.cos(i)]);
                }
                var line_data1 = {
                    data: sin,
                    color: "#3c8dbc"
                };
                var line_data2 = {
                    data: cos,
                    color: "#00c0ef"
                };
                $.plot("#line-chart", [line_data1, line_data2], {
                    grid: {
                        hoverable: true,
                        borderColor: "#f3f3f3",
                        borderWidth: 1,
                        tickColor: "#f3f3f3"
                    },
                    series: {
                        shadowSize: 0,
                        lines: {
                            show: true
                        },
                        points: {
                            show: true
                        }
                    },
                    lines: {
                        fill: false,
                        color: ["#3c8dbc", "#f56954"]
                    },
                    yaxis: {
                        show: true,
                    },
                    xaxis: {
                        show: true
                    }
                });
                //Initialize tooltip on hover
                $("<div class='tooltip-inner' id='line-chart-tooltip'></div>").css({
                    position: "absolute",
                    display: "none",
                    opacity: 0.8
                }).appendTo("body");
                $("#line-chart").bind("plothover", function(event, pos, item) {

                    if (item) {
                        var x = item.datapoint[0].toFixed(2),
                                y = item.datapoint[1].toFixed(2);

                        $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
                                .css({top: item.pageY + 5, left: item.pageX + 5})
                                .fadeIn(200);
                    } else {
                        $("#line-chart-tooltip").hide();
                    }

                });
                /* END LINE CHART */
                
                /*
                 * DONUT CHART
                 * -----------
                 */

                var donutData = [
                    {label: "Series2", data: 30, color: "#3c8dbc"},
                    {label: "Series3", data: 20, color: "#0073b7"},
                    {label: "Series4", data: 50, color: "#00c0ef"}
                ];
                $.plot("#donut-chart", donutData, {
                    series: {
                        pie: {
                            show: true,
                            radius: 1,
                            innerRadius: 0.5,
                            label: {
                                show: true,
                                radius: 2 / 3,
                                formatter: labelFormatter,
                                threshold: 0.1
                            }

                        }
                    },
                    legend: {
                        show: false
                    }
                });
                /*
                 * END DONUT CHART
                 */
                 
                 /*
                  * Custom Label formatter
                  * ----------------------
                  */
                 function labelFormatter(label, series) {
                     return "<div style='font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;'>"
                             + label
                             + "<br/>"
                             + Math.round(series.percent) + "%</div>";
                 }
	 });
	 </script>
	
</html>
