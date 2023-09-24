<%@page import="servlets.signup"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="admin_nav.jsp"%>

<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>
<div class="container">
<ol class="breadcrumb">
		<li><a href="admin_index.jsp">Home</a></li>
		<li class="active">Add Worker</li>
	</ol>
<div class="row">
<form method="post" name="frm" action="http://localhost:8080/EServiceCal/removeworker">

			<div class="form-group">
				<label for="exampleInputName2">Worker Id</label> <input
					type="text" name="id" class="form-control" 
					>
			</div>
			
			<div class="form-group">
					<input type="submit" name="submit" value="add worker"
						class="btn btn-primary" >
				</div>
			
				
</form>
</div>
</div>
<%@ include file="admin_footer.jsp"%>