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
			In Progress<small><spring:message code="admin" /></small>
		</h1>
		<ol class="breadcrumb">
			<li class="active"><font color='blue'><b><%=date%></b></font></li>
		</ol>
	</section>
<%-- 	<jsp:include page="../fragments/detailsHeader.jsp" /> --%>
	<!-- Main content -->
<!--             <aside class="center"> -->
<!--                 Main content -->
<!--                 <section class="content"> -->
<!--                     <div class="row"> -->
                    
<!--                         <div class="col-md-9"> -->
<!--                             general form elements disabled -->
<!--                             <div class="box box-warning"> -->
                               
<!--                                 <div class="box-body"> -->
<!--                                     <form role="form"> -->
<!--                                        <div class="form-group"> -->
<!--                                             <label>Select Program</label> -->
<!--                                             <select class="form-control"> -->
<!--                                                 <option>Duplicates in BIC</option> -->
<!--                                                 <option>ECO Implementation</option> -->
<!--                                                 <option>ECO COPY</option> -->
<!--                                                 <option>Cisco Multiple level Bill Copy</option> -->
<!--                                                 <option>Common Copy</option> -->
<!--                                                 <option>UDA Data Missing</option> -->
<!--                                                 <option>2C2</option> -->
<!--                                                 <option>WIP Sync Up</option> -->
<!--                                                 <option>Status Type 10 in EEC Table </option> -->
<!--                                             </select> -->
<!--                                         </div> -->
                                        
<!--                                          textarea -->
<!--                                         <div class="form-group"> -->
<!--                                             <label>Monitoring Query</label> -->
<!--                                             <textarea class="form-control" rows="3" placeholder="Enter here ..."></textarea> -->
<!--                                         </div> -->
                                        
<!--                                          textarea -->
<!--                                         <div class="form-group"> -->
<!--                                             <label>RCA Query</label> -->
<!--                                             <textarea class="form-control" rows="3" placeholder="Enter here..."></textarea> -->
<!--                                         </div> -->
                                        
<!--                                          textarea -->
<!--                                         <div class="form-group"> -->
<!--                                             <label>Solution</label> -->
<!--                                             <textarea class="form-control" rows="3" placeholder="Enter here ..."></textarea> -->
<!--                                         </div> -->
                            
<!--                                         <div class="box-footer"> -->
<!--                                         <button type="submit" class="btn btn-primary">Submit</button> -->
<!--                                         <button type="submit" class="btn btn-primary">Reset</button> -->
<!--                                     </div> -->
<!--                                     </form> -->
<!--                                 </div>/.box-body -->
<!--                             </div>/.box -->
<!--                         </div>/.col (right) -->
<!--                     </div>   /.row -->
<!--                 </section>/.content -->
<!--             </aside>/.right-side -->

