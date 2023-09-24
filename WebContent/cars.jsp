<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import= "model.service" %>
<%@ page import= "model.serviceBean" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar1.jsp"%>
<br>
<div class="container" style="background-color: #d6e4f0">

	<div class="row">
		<h3 class="cen" style="color: #337ab7;">Carpenter Services</h3>
		

			<div class="col-md-3">
			<div class="thumbnail">
				<img src="img/furniture.jpg">
				<div class="caption">
					<h3 class="cen">General Services</h3>
					<p class="cen">
						<a href="cars_book.jsp?id=19" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>

			<div class="col-md-3">
			<div class="thumbnail">
				<img src="img/kitchen.jpg">
				<div class="caption">
					<h3 class="cen">Kitchen Work</h3>
					<p class="cen">
						<a href="cars_book.jsp?id=20" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>

			<div class="col-md-3">
				<div class="thumbnail">
				<img src="img/bed.jpg">
				<div class="caption">
				<h3 class="cen">Furniture Work</h3>
					<p class="cen">
						<a href="cars_book.jsp?id=21" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>

			<div class="col-md-3">
				<div class="thumbnail">
				<img src="img/door.jpg">
				<div class="caption">
					<h3 class="cen">Door and Windows</h3>
					<p class="cen">
						<a href="cars_book.jsp?id=22" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>
			

			
				
			

		</div>
	</div>
<div class="container" style="background-color: #d6e4f0">
	<div class="row">
		<h3 class="cen" style="color: #337ab7;">Rate-Card</h3>

	<br>
	
	
			<table class="table table-hover">

				<tr>
					<th style="background-color: #4b95e8">Service Name</th>
					
					<th style="background-color: #92bff1">Price</th>
					
				</tr>
				<%
   		service dao=new service();
   		List<serviceBean> list=dao.getServices("carpenter");
%>
				<tr>

					<%
	for(serviceBean obj:list)
	{
%>
					
					<td><%=obj.getSe_name()%></td>
					<td><%=obj.getPrice()%></td>
					

					
				</tr>
				
<% }  %>
			</table>

	</div>
</div>
	


	
<br>
<%@ include file="footer1.jsp"%>