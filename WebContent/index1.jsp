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

<%@ include file="carousel.html"%>
<div class="container" style="background-color: #d6e4f0">

	<div>
		<h3 class="cen" style="color: #337ab7;">How Can We Help You?</h3>
		<div class="row">

			<div class="col-md-4 cen">
			<h3><a href="applins.jsp" class="thumbnail">Appliances<i
					class="fa fa-television fa-4x fa-border"></i>

				</a></h3>
			</div>

			<div class="col-md-4 cen">
				<h3><a href="autos.jsp" class="thumbnail">Automobiles<i
					class="fa fa-car fa-4x fa-border"></i>

				</a></h3>
			</div>

			<div class="col-md-4 cen">
			<h3>	<a href="paints.jsp" class="thumbnail">Painting <i
					class="fa fa-paint-brush fa-4x fa-border"></i>

				</a></h3>
			</div>

			<div class="col-md-4 cen">
				<h3><a href="plumbs.jsp" class="thumbnail">Plumbing<i
					class="fa fa-wrench fa-4x fa-border"></i>

				</a></h3>
			</div>

			<div class="col-md-4 cen">
			<h3>	<a href="cars.jsp" class="thumbnail">Carpenter <i
					class="fa fa-legal fa-4x fa-border"></i>

				</a></h3>
			</div>
			
			<div class="col-md-4 cen">
				<h3><a href="elecs.jsp" class="thumbnail">Electrician<i
					class="fa fa-plug fa-4x fa-border"></i>

				</a></h3>
			</div>
			

		</div>
	</div>
	

	

</div>
<%@ include file="part2.html"%>
<%@ include file="footer1.jsp"%>
