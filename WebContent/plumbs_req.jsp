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
			<h3 style="color: #337ab7;">#Plumbing Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">UserID</th>
					<th style="background-color: #92bff1">Service ID</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		PlumbModel dao=new PlumbModel();
   		List<PlumbBean> list=dao.getData("s01");
%>
				<tr>

					<%
	for(PlumbBean obj:list)
	{
%>
					<td><%=obj.getId()%></td>
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getSe_name()%></td>
					<td><%=obj.getDate()%></td>
					<td><%=obj.getTime()%></td>
					<td><%=obj.getAddress()%></td>

					<td style="text-align: center">
					<a class="btn btn-primary btn-sm"
						href="fwd_plumb.jsp?uid=<%=obj.getId()%>&id=<%=obj.getBookId()%>&se_name=<%=obj.getSe_name()%>&date=<%=obj.getDate()%>&time=<%=obj.getTime()%>&city=<%=obj.getCity()%>&area=<%=obj.getArea()%>&address=<%=obj.getAddress()%>">
							<i class="glyphicon glyphicon-edit icon-white"></i> Forward TO Worker
					</a></td>
				</tr>
				<%} %>

			</table>
		</form>
	</div>
</div>
</div>
<div class="container">

	
		<div>
			<h3 style="color: #337ab7;">#Forwarded to Worker Plumbing Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">UserID</th>
					<th style="background-color: #92bff1">Service ID</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #4b95e8">Worker ID</th>
					
				</tr>
<%
   		fwdToWorkerModel fm=new fwdToWorkerModel();
   		List<fwdWorkerBean> lst=fm.getallData("s01");
%>
				<tr>

					<%
	for(fwdWorkerBean fw:lst)
	{
%>
					<td><%=fw.getUId()%></td>
					<td><%=fw.getBookId()%></td>
					<td><%=fw.getService()%></td>
					<td><%=fw.getDate()%></td>
					<td><%=fw.getTime()%></td>
					<td><%=fw.getAddress()%></td>
					<td><%=fw.getWorkerId()%></td>

					
				</tr>
<%	} %>

			</table>
		</form>
	</div>
	
</div>
</div>
<div class="container">

	
		<div>
			<h3 style="color: #337ab7;">#Completed Plumbing Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">UserID</th>
					<th style="background-color: #92bff1">Booking Id</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Worker ID</th>
					
					<th style="background-color: #4b95e8">Date</th>
					<th style="background-color: #92bff1">Total Charges</th>
					<th style="background-color: #4b95e8">Paid</th>
					
					
					
				</tr>
<%
   		completedModel cm=new completedModel();
   		List<completedBean> lst1=cm.getallData("s01");
%>
				<tr>

					<%
	for(completedBean fw:lst1)
	{
%>
					<td><%=fw.getUserId()%></td>
					<td><%=fw.getBookId()%></td>
					<td><%=fw.getService()%></td>
					<td><%=fw.getWorkerId()%></td>
					<td><%=fw.getDate()%></td>
					<td><%=fw.getTotalCharges()%></td>
					<td><%=fw.getPaid()%></td>
					

					
				</tr>
<%	} %>

			</table>
		</form>
	</div>
	
</div>
</div>

</div>


<%@ include file="admin_footer.jsp"%>