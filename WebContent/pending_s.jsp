<%@ page import="model.fwdToWorkerModel"%>
<%@ page import="model.fwdWorkerBean"%>
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
			<h3 style="color: #337ab7;">#Pending Services</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">Customer Name</th>
					<th style="background-color: #92bff1">Service ID</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #4b95e8">Customer Contact No.</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		fwdToWorkerModel dao=new fwdToWorkerModel();
   		List<fwdWorkerBean> list=dao.getData(userid);
%>
				<tr>

					<%
	for(fwdWorkerBean obj:list)
	{
%>
					<td><%=obj.getCustomer()%></td>
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getService()%></td>
					<td><%=obj.getDate()%></td>
					<td><%=obj.getTime()%></td>
					<td><%=obj.getAddress()%></td>
					<td><%=obj.getCsContact()%></td>
					<td style="text-align: center">
					<a class="btn btn-primary btn-sm"
						href="completed_s.jsp?id=<%=obj.getBookId()%>&uid=<%=obj.getUId()%>&wid=<%=obj.getWorkerId()%>&se_name=<%=obj.getService()%>&date=<%=obj.getDate()%>&time=<%=obj.getTime()%>&city=<%=obj.getCity()%>&area=<%=obj.getArea()%>&address=<%=obj.getAddress()%>">
							<i class="fa fa-check-square"></i> Service Completed
					</a></td>
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