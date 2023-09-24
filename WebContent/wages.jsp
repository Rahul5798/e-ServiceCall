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
			<h3 style="color: #337ab7;">#Wages per Service</h3>
			<div class="row">

		<form method="post">
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8" class="col-md-1">Booking Id</th>
					<th style="background-color: #92bff1">Service</th>
					<th style="background-color: #4b95e8">Date</th>
					<th style="background-color: #92bff1">Time</th>
					<th style="background-color: #4b95e8">Wages</th>
					<th style="background-color: #92bff1">Wages Received</th>
					
<%
   		completedModel dao=new completedModel();
   		List<completedBean> list=dao.getWages(userid);
%>
				<tr>

					<%
	for(completedBean obj:list)
	{
%>
					
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getService()%></td>
					<td><%=obj.getDate()%></td>
					<td><%=obj.getTime()%></td>
					<td><%=obj.getWages()%></td>
					<td><%=obj.getWagesPaid()%></td>
					
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