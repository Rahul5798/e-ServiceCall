<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar.html"%>
<link href="css/signup.css" rel="stylesheet" />
<script src="validation/jqueryValidation.js"></script>
<script src="validation/UsernameValidation.js"></script>
<script src="validation/EmailValidation.js"></script>

<div class="container">
	<ol class="breadcrumb">
		<li><a href="index.jsp">Home</a></li>
		<li class="active">Sign Up</li>
	</ol>
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-7">
			<h1 class="cen" style="margin-top: 0px;">Sign Up</h1>

			<form method="post" id="pnm" name="form" action="http://localhost:8080/EServiceCal/signup">

				<div class="form-group">
					<label for="exampleInputName2">Name</label> <input type="text"
						name="name" class="form-control" placeholder="Name" required>
				</div>

				<div class="form-group">
					<label for="exampleInputName2">User Name</label> <input type="text"
						name="uid" onblur="sendInfo()" class="form-control"
						placeholder="User Name" required><span id="pruthviraj"
						style="color: red;"></span>
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label> <input
						type="email" name="mail" onblur="sendInfo1()" class="form-control"
						placeholder="Email" required><span id="pruthviraj1"
						style="color: red;"></span>
				</div>

				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> <input
						type="password" name="pass" class="form-control"
						placeholder="Password" required>
				</div>

				<div class="form-group">
					<label>Address</label>
					<textarea class="form-control" name="add" rows="3"
						placeholder="Address" required></textarea>
				</div>

				<div class="form-group">
					<label for="">Phone Number</label> <input type="text" name="phon"
						maxlength="10" class="form-control" placeholder="Phone Number"
						required>
				</div>

				<div class="form-group">
					<label>City</label> <select class="form-control" name="city"
						id="city">

						<option>Ahmedabad</option>

					</select>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-success" id="myButton"
						name="submit" value="signup">Sign Up</button>
				</div>

			</form>
		</div>
		<div class="col-md-4">
			<br> <br> <br>
			<div class="col-md-1"></div>
			<div class="col-md-11" style="background-color: #e8ebee">
				<h3 class="cen">Advantages of SignUp</h3>

				<h4 class="cen">
					<span class="fa-stack fa-3x"> <i
						class="fa fa-circle fa-stack-2x"></i> <i
						class="fa fa-tachometer fa-stack-1x fa-inverse"></i>
					</span> <br>Faster Service Providing
				</h4>

				<h4 class="cen">
					<span class="fa-stack fa-3x"> <i
						class="fa fa-circle fa-stack-2x"></i> <i
						class="fa fa-thumbs-o-up fa-stack-1x fa-inverse"></i>
					</span> <br>Manage Your Booking
				</h4>

				<h4 class="cen">
					<span class="fa-stack fa-3x"> <i
						class="fa fa-circle fa-stack-2x"></i> <i
						class="fa fa-file-text-o fa-stack-1x fa-inverse"></i>
					</span> <br>Manage Your Information
				</h4>


				<h5 class="cen"></h5>

			</div>

		</div>
	</div>
</div>

<%@ include file="footer.html"%>