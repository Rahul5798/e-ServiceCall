<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="navbar.html"%>

<div class="container">
	<ol class="breadcrumb">
		<li><a href="index.jsp">Home</a></li>
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

				<b>............<br> ...........................
				</b>
			</p>

			<p>
				<strong>E-mail:</strong> <a href="mailto:#">eServicecall12345@gmail.com</a><br>
				<strong>Web Site:</strong> www.eService.com
			</p>
		</div>
		<div class="col-md-6">
			<form method="post" class="form-horizontal" action="contact"
				onSubmit="checkForm(this);">

				<fieldset>
					<legend>Drop Your Message:</legend>

					<div class="form-group">
						<label class="col-lg-2 control-label">Name: </label>
						<div class="col-lg-10">
							<input type="text" class="form-control" name="name" id="fname"
								placeholder="Enter Your Name" required>
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label">Email: </label>
						<div class="col-lg-10">
							<input type="email" class="form-control" name="email" id="email"
								placeholder="Enter Your Email" required>
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
							<button type="submit" name="submit" value="send"
								class="btn btn-primary">Submit</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>



	</div>

</div>
<%@ include file="footer.html"%>