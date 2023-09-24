<%@ page import="model.PlumbModel"%>
<%@ page import="model.fwdWorkerBean"%>
<%@ page import="model.fwdToWorkerModel"%>
<%@ page import="model.completedBean"%>
<%@ page import="model.completedModel"%>
<%@ page import="model.PlumbBean"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="admin_nav.jsp"%>

<div class="container">

	
		<div>
			<h3 style="color: #337ab7;">#Wages Per Service</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					
					<th style="background-color: #92bff1">Booking Id</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Worker ID</th>
					
					<th style="background-color: #4b95e8">Date</th>
					<th style="background-color: #92bff1">Wages</th>
					<th style="background-color: #4b95e8">Paid</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
					
					
					
				</tr>
<%
   		completedModel cm=new completedModel();
   		List<completedBean> lst1=cm.payWages();
%>
				<tr>

					<%
	for(completedBean fw:lst1)
	{
%>
					
					<td><%=fw.getBookId()%></td>
					<td><%=fw.getService()%></td>
					<td><%=fw.getWorkerId()%></td>
					<td><%=fw.getDate()%></td>
					<td><%=fw.getWages()%></td>
					<td><%=fw.getPaid()%></td>
					<td style="text-align: center">
					<a class="btn btn-primary btn-sm"
						href="wagesPay.jsp">
							<i class="fa fa-credit-card"></i> Pay Wages
					</a></td>

					
				</tr>
<%	} %>

			</table>
		</form>
	</div>
	
</div>
</div>

</div>


<%@ include file="admin_footer.jsp"%>