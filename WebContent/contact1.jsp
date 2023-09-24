<%@page import="servlets.signup"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar1.jsp"%>

<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>
<div class="container">
	<ol class="breadcrumb">
		<li><a href="index1.jsp">Home</a></li>
		<li class="active">Contact</li>
	</ol>
	<div class="row">
		<div class="col-md-12">
			<h1>Contact Detail</h1>
			<hr>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">

			<p>
			<h4>
				<b>eServiceCall.com</b>
			</h4>
			</p>
			<p>
				SSGEC COLLEGE<br> Sidsar road Road <br> bhavnagar <br>
				Gujarat, INDIA
			</p>

			<p>
				<strong>E-mail:</strong> <a href="mailto:#">eServicecall12345@gmail.com</a><br>
				<strong>Web Site:</strong> www.eService.com
			</p>
		</div>
		<div class="col-md-6">
			<form method="post" class="form-horizontal" action="http://localhost:8080/EServiceCal/Contact"
				onSubmit="checkForm(this);">

				<fieldset>
					<legend>Drop Your Message:</legend>

					<div class="form-group">
						<label class="col-lg-2 control-label">Name: </label>
						<div class="col-lg-10">
							<input type="text" class="form-control"
								value="<%=st.name%>" name="name" id="fname"
								placeholder="Enter Your Name" required>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label">Email: </label>
						<div class="col-lg-10">
							<input type="email" class="form-control" name="email" id="email"
								value="<%=st.email%>" placeholder="Enter Your Email"
								required>
						</div>
					</div>

					<div class="form-group">
						<label for="textArea" class="col-lg-2 control-label">Message:
						</label>
						<div class="col-lg-10">
							<textarea class="form-control" rows="5" id="msg" name="msg"
								placeholder="Drop Your Message Here..." required></textarea>
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-10 col-lg-offset-2">
							<button type="submit" name="submit" class="btn btn-primary">Submit</button>
							<!-- <a class="btn btn-primary" href="index1.jsp" type="submit" name="submit">Submit</a> -->
						</div>
					</div>
				</fieldset>
			</form>
		</div>



	</div>

</div>
<%@ include file="footer1.jsp"%>