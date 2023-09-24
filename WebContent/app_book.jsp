
<%@page import="java.util.List"%>

<%@page import="servlets.signup"%>

<%@page import="model.serviceBean"%>

<%@page import="model.service"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ include file="navbar1.jsp"%>
<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>

<%
	int id=Integer.parseInt(request.getParameter("id"));
	System.out.println("ID of AC is :-"+id);
	
	service s=new service();
	List<serviceBean> list=s.getServices("appliance");
%>

<div class="container">
	<ol class="breadcrumb">
		<li><a href="index1.jsp">Home</a></li>
		<li class="active">Appliances Service booking</li>
	</ol>
	<div class="row">
		<form name="frm" method="post" action="http://localhost:8080/EServiceCal/book_appl">
			<div class="col-md-6">

				

				<div class="form-group">
					<label>Select Sub Services</label> <select class="form-control"
						name="seName">
						<%for(serviceBean bean:list){ %>
						<option><%=bean.getSe_name() %></option>
						<%} %>
					</select>
				</div>

				<div class="form-group">
					<label>Your Requirement</label>
					<textarea class="form-control" rows="3" name="req"></textarea>
				</div>

				<div class="form-group">
					<label>Confirm Date</label><br>
					<div class="col-md-5">
						<input type="date" class="form-control" name="dat">
					</div>
					<div class="col-md-7"></div>
				</div>
				<br>
				<div class="form-group">
					<label>Confirm Time</label><br>
					<div class="col-md-5">
						<input type="time" class="form-control" name="tim">
					</div>
					<div class="col-md-7"></div>
				</div>
			</div>
			
			 
			<div class="col-md-6">
				
				
				
				<div class="form-group">
					<label>User ID</label> <input type="text" name="uid"
						class="form-control" value="<%=st.userid%>" required>
				</div>
				<div class="form-group">
					<label>Full Name</label> <input type="text" name="name"
						class="form-control" value="<%=st.name%>" required>
				</div>

				<div class="form-group">
					<label>Email address</label> <input type="text" name="mail"
						class="form-control" id="exampleInputEmail1"
						value="<%=st.email%>" required>
				</div>

				<div class="form-group">
					<label>Select City</label> <select class="form-control"
						name="city">
						
						<option>Ahmedabad</option>
						
					</select>
				</div>
				
				<div class="form-group">
					<label>Select Area</label> <select class="form-control"
						name="area">
						<option>Vatva</option>
						<option>Geeta Mandir</option>
						<option>Bapu Nagar</option>						
						<option>Vastral</option>
						
					</select>
				</div>
				
				
				<div class="form-group">
					<label>Address</label>
					<textarea class="form-control" name="add" rows="3" required><%=st.address%></textarea>
				</div>

				<div class="form-group">
					<label>Phone Number</label> <input type="text" class="form-control"
						name="phon" maxlength="10" value="<%=st.contact%>" required>
				</div>

				<div class="form-group">
					<input type="submit" name="submit" value="booking"
						class="btn btn-primary" >
				</div>
		</form>
	</div>
</div>

</div>

<%@ include file="footer1.jsp"%>