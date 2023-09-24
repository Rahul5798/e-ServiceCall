<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.html"%>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>eService</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="animate.css" rel="stylesheet" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<br> <br>
				<div class="col-md-2">
					<a href="index.jsp"> <span class="fa-stack fa-2x"> <i
							class="fa fa-square fa-stack-2x"></i> <i
							class="fa fa-arrow-left fa-stack-1x fa-inverse"></i>
					</span>
					</a>

				</div>
				<div class="col-md-8">

					


					<br> <br> <br>
					<form class="cen" name="login" action="http://localhost:8080/EServiceCal/login" method="post">

						<h3 class="cen" style="color: #337ab7">Login</h3>
						<h5 style="color: red;">${msg}</h5>
						<div class="form-group">

							<input type="text" class="form-control" placeholder="User Name"
								name="uid" required>
						</div>
						<div class="form-group">

							<input type="password" class="form-control"
								placeholder="Password" name="pass" required>
						</div>

						<button type="submit" class="btn btn-primary btn-lg btn-block"
							name="login" value="login">Login</button>
						<br> <a href="signup.jsp">Sign Up</a>
						<br> <a href="forget_pswd.jsp">Forget Password</a>

					</form>
				</div>
				<div class="col-md-2"></div>
			</div>
			<div class="col-md-4">
				<br> <br> <br> <br>
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