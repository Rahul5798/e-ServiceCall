<%@page import="servlets.signup"%>
<%@ page import="model.BookingModel"%>
<%@ page import="model.BookingBean"%>
<%@ page import="model.fwdToWorkerModel"%>
<%@ page import="model.fwdWorkerBean"%>
<%@ page import="model.completedModel"%>
<%@ page import="model.completedBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="navbar1.jsp"%>
<%!signup st=new signup(); %>
	<%
		st=(signup)session.getAttribute("user");
	%>
	<ol class="breadcrumb">
		<li><a href="index1.jsp">Home</a></li>
		<li class="active">My Orders</li>
	</ol>
<div class="container">
<div class="row">
	
			<h3 style="color: #337ab7;">#New Requests</h3>
			<div class="col md-4">

		<form method="post">
			<table class="table table-hover">

				<tr>
					
					<th style="background-color: #92bff1">BookingId</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Date</th>
					<th style="background-color: #4b95e8">Time</th>
					<th style="background-color: #92bff1">Address</th>
					<th style="background-color: #4b95e8; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		BookingModel dao=new BookingModel();
   		List<BookingBean> list=dao.getDetail(st.userid);
%>
				<tr>

					<%
	for(BookingBean obj:list)
	{
%>
					<td><%=obj.getId()%></td>
					<td><%=obj.getSer()%></td>
					<td><%=obj.getDate()%></td>
					<td><%=obj.getTime()%></td>
					
					<td><%=obj.getAdd()%></td>
					<td style="text-align: center">
					<a class="btn btn-primary btn-sm"
						href="del_s.jsp">

							<i class="glyphicon glyphicon-trash icon-white"></i> Delete Request
					</a></td>

					
					
				</tr>
				<%} %>

			</table>
		</form>
	</div>
</div>
<div class="row">
	
			<h3 style="color: #337ab7;">#Requests Forwarded to Worker</h3>
			<div class="col md-4">

		<form method="post">
			<table class="table table-hover">

				<tr>
					
					<th style="background-color: #92bff1">BookingId</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Worker Name</th>
					<th style="background-color: #4b95e8">Date</th>
					<th style="background-color: #92bff1">Time</th>
					<th style="background-color: #4b95e8">Worker Contact</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		fwdToWorkerModel da=new fwdToWorkerModel();
   		List<fwdWorkerBean> l=da.getDetail(st.userid);
%>
				<tr>

					<%
	for(fwdWorkerBean obj:l)
	{
%>
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getService()%></td>
					<td><%=obj.getWorker()%></td>
					<td><%=obj.getDate()%></td>
					
					<td><%=obj.getTime()%></td>
					<td><%=obj.getWContact()%></td>
					<td style="text-align: center"><a class="btn btn-primary btn-sm"
						href="del_s.jsp">

							<i class="glyphicon glyphicon-trash icon-white"></i> Delete Request
					</a></td>

					
					
				</tr>
				<%} %>

			</table>
		</form>
	</div>
</div>
<div class="row">
	
			<h3 style="color: #337ab7;">#Completed Requests</h3>
			<div class="col md-4">

		<form method="post">
			<table class="table table-hover">

				<tr>
					
					<th style="background-color: #92bff1">BookingId</th>
					<th style="background-color: #4b95e8">Service Name</th>
					<th style="background-color: #92bff1">Worker Name</th>
					<th style="background-color: #4b95e8">Date</th>
					<th style="background-color: #92bff1">Time</th>
					<th style="background-color: #4b95e8">Worker Contact</th>
					<th style="background-color: #92bff1">Total Charges</th>
					<th style="background-color: #4b95e8">Payment</th>
					<th style="background-color: #92bff1; text-align: center"
						class="col-md-3">Action</th>
				</tr>
<%
   		completedModel d=new completedModel();
   		List<completedBean> li=d.getDetail(st.userid);
%>
				<tr>

					<%
	for(completedBean obj:li)
	{
%>
					<td><%=obj.getBookId()%></td>
					<td><%=obj.getService()%></td>
					<td><%=obj.getWorker()%></td>
					<td><%=obj.getDate()%></td>
					
					<td><%=obj.getTime()%></td>
					<td><%=obj.getWorkerContact()%></td>
					<td><%=obj.getTotalCharges()%></td>
					<td><%=obj.getPaid()%></td>
					<td style="text-align: center"><a class="btn btn-primary btn-sm"
						href="del_s.jsp">

							<i class="fa fa-credit-card"></i> Make Payment
					</a>
					<a class="btn btn-primary btn-sm"
						href="del_s.jsp">

							<i class="fa fa-comments"></i> Give Feedback
					</a>
					
					</td>

					
					
				</tr>
				<%} %>

			</table>
		</form>
	</div>
</div>
</div>

<br>

<%@ include file="footer1.jsp"%>
	