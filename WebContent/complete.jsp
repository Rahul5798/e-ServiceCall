<%@ page import="model.fwdToWorkerModel"%>
<%@ page import="model.fwdWorkerBean"%>
<%@ page import="model.completedModel"%>
<%@ page import="model.completedBean"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%String userid; %>
	<%
	if(session!=null)
	{
	if(session.getAttribute("abc")!=null)
		{
			userid=session.getAttribute("abc").toString();
%>	
<%@ include file="worker_nav.jsp"%>

<div class="container">

	
		<div>
			<h3 style="color: #337ab7;">#Completed Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">Booking ID</th>
					<th style="background-color: #92bff1">Customer Name</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #4b95e8">Total Charges</th>
					
				</tr>
<%
	completedModel cm=new completedModel();
	List<completedBean> lst1=cm.getDataWorker(userid);
%>
				<tr>

					<%
	for(completedBean obj:lst1)
	{
%>
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getCustomer()%></td>
					<td><%=obj.getService()%></td>
					<td><%=obj.getDate()%></td>
					<td><%=obj.getTime()%></td>
					<td><%=obj.getAddress()%></td>
					<td><%=obj.getTotalCharges()%></td>
					
				</tr>
				<%} %>

			</table>
		</form>
	</div>
</div>
</div>
<% 	}
	}
%>
<%@ include file="admin_footer.jsp"%>