<%@page import="servlets.signup"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar.html"%>

<div class="container">
	<ol class="breadcrumb">
		<li><a href="index.jsp">Home</a></li>
		<li class="active">Forgot Password</li>
	</ol>
	<h1 style="text-align: center">Forgot Password</h1>
	<div class="col-md-3"></div>
	<div class="col-md-6">

		<form name="forgotpass" method="post" action="http://localhost:8080/EServiceCal/forgetpass">

			<div class="form-group">
				<label>Enter Mobile No.</label> <input type="text" name="phon"
					class="form-control">
			</div>
			<button type="submit" class="btn btn-primary btn-lg btn-block"
							name="submit" value="submit">Get Password</button>

			<br> <a href="Login.jsp">Sign in</a>

			

		</form>
	</div>
</div>
<%@ include file="footer1.jsp"%>
