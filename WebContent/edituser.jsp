<%@page import="servlets.signup"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar1.jsp"%>
<script type="text/javascript">
					
						function confirm(){
							alert("Your Account Updated Successfully...Please re-login");
						
					}
					
</script>
<%! signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>
<div class="container">
	<ol class="breadcrumb">
		<li><a href="index1.jsp">Home</a></li>
		<li class="active">Edit Your Profile</li>
	</ol>
	<h1 style="text-align: center">Edit Information</h1>
	<div class="col-md-3"></div>
	<div class="col-md-6">

		<form name="updateform" method="post" action="http://localhost:8080/EServiceCal/updateuser">

			<div class="form-group">
				<label>Full Name</label> <input type="text" name="name"
					value="<%=st.name%>" class="form-control">
			</div>

			<div class="form-group">
				<label>User Name</label> <input type="text" name="uid"
					value="<%=st.userid%>" class="form-control" readonly>
			</div>

			<div class="form-group">
				<label>Email ID</label> <input type="text" name="mail"
					value="<%=st.email%>" class="form-control"
					id="exampleInputEmail1">
			</div>

			<div class="form-group">
				<label>Password</label> <input type="text" name="pass"
					value="change password" class="form-control">
			</div>

			<div class="form-group">
				<label>Address</label>
				<textarea class="form-control" name="add" rows="3"><%=st.address%></textarea>
			</div>

			<div class="form-group">
				<label>Phone Number</label> <input type="text" class="form-control"
					value="<%=st.contact%>" name="phon" maxlength="10">
			</div>

			<div class="form-group">
				
				<input class="btn btn-primary" type="submit" name="submit"
					value="updateuser" onclick="confirm()">
			</div>

		</form>
	</div>
</div>
<%@ include file="footer1.jsp"%>
