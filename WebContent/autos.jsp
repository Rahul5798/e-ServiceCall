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
		<h3 class="cen" style="color: #337ab7;">Automobile Services</h3>
		

			<div class="col-md-3">
			<div class="thumbnail">
				<img src="img/icon-automobiles-general-service.jpg">
				<div class="caption">
					<h3 class="cen">General Automobile Services</h3>
					<p class="cen">
						<a href="elec_book.jsp?id=19" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>

			<div class="col-md-3">
			<div class="thumbnail">
				<img src="img/icon-automobiles-car-wheel-alignment.jpg">
				<div class="caption">
					<h3 class="cen">Car Maintainance Services</h3>
					<p class="cen">
						<a href="elec_book.jsp?id=20" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>

			<div class="col-md-3">
				<div class="thumbnail">
				<img src="img/bike-maintenance.png">
				<div class="caption">
					<h3 class="cen">Bike Maintainance Services</h3>
					<p class="cen">
						<a href="elec_book.jsp?id=21" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>

			<div class="col-md-3">
				<div class="thumbnail">
				<img src="img/icon-automobiles-car-wash.jpg">
				<div class="caption">
					<h3 class="cen">Car Washing Services</h3>
					<p class="cen">
						<a href="car_book.jsp?id=22" class="btn btn-primary" role="button">Book
							Service</a>
					</p>
				</div>
			</div>
			</div>
			

			
				
			

		</div>
	</div>


	
<br>
<%@ include file="footer1.jsp"%>