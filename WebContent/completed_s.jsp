<%@ page import="java.util.List"%>
<%@ page import="model.PlumbModel"%>
<%@ page import="model.PlumbBean"%>
<%@ page import="model.workerBean"%>
<%@ page import="model.worker"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="admin_nav.jsp"%>

<br>
<div class="container">
<div class="col-md-9">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<h3>Ordered service delivered successfully</h3>
		<%
String uid=(String)request.getParameter("uid");	
String wid=(String)request.getParameter("wid");
String id=(String)request.getParameter("id");
String se_name=(String)request.getParameter("se_name");
String date=(String)request.getParameter("date");
String time=(String)request.getParameter("time");
String address=(String)request.getParameter("address");
String city=(String)request.getParameter("city");
String area=(String)request.getParameter("area");



System.out.println(id);
%>
<%
	workerBean w=new workerBean();

	worker wk=new worker();
	List<workerBean> list=wk.getWorker("plumber",area);
%>
		<form method="post" name="frm" action="http://localhost:8080/EServiceCal/completed">

			<div class="form-group">
				<label for="exampleInputName2">Booking Id</label> <input
					type="text" name="id" class="form-control" placeholder="Name"
					value="<%=id%>" readonly>
			</div>

			<div class="form-group">
				<label for="exampleInputName2">Service Name</label> <input
					type="text" name="se_name" class="form-control"
					placeholder="Name" value="<%=se_name%>" required>
			</div>
			<div class="form-group">
				<label for="exampleInputName2">Date</label> <input
					type="text" name="date" class="form-control"
					placeholder="Name" value="<%=date%>" required>
			</div>
			<div class="form-group">
				<label for="exampleInputName2">Time</label> <input
					type="text" name="time" class="form-control"
					placeholder="Name" value="<%=time%>" required>
			</div>
			
			<div class="form-group">
				<label for="exampleInputName2">Worker</label> <input
					type="text" name="workerid" class="form-control"
					placeholder="Name" value="<%=wid%>" required>
			</div>
			
			<div class="form-group">
				<label for="exampleInputName2">Extra Charges</label> <input
					type="number" name="charges" class="form-control"
					 required>
			</div>
			<br>
			<div class="form-group">
				<input type="submit" name="submit" value="completed"
					class="btn btn-primary">
			</div>
			</div>
	</div>
	
</div>

<%@ include file="admin_footer.jsp"%>