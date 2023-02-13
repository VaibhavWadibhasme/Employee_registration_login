<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">

<title>Employee Registration</title>

<style type="text/css">
.container {
	margin-top: 5px;
	margin-left: 350px;
	padding: 50px;
	border: solid;
	border-radius: 10px;
}
</style>

</head>
<body>
	<div class="row">
		<div class="col col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="container">
				<h2 style="text-align: center">Employee Registration</h2>
				<form action="register" method="post">
					<div class="form-group">
						<label>Name</label><input type="text" class="form-control"
							id="name" name="name">
					</div>
					<div class="form-group">
						<label>Date of Birth</label><input type="text"
							class="form-control" id="dob" name="dob">
					</div>
					<div class="form-group">
						<label>Gender</label><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" class="form-check-input" value="Male"
							name="gender" id="gender">Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" class="form-check-input" value="Female"
							name="gender" id="gender">Female
					</div>
					<div class="form-group">
						<label>Address</label><textarea class="form-control"
							id="address" name="address"></textarea>
					</div>
					<div class="row">
					<div class="col-lg-6">
					<div class="form-group">
						<label>City</label><select id="city" name="city" class="form-control">
						<option>Select City</option>
						<option>Nagpur</option>
						<option>Pune</option>
						<option>Mumbai</option>
						<option>Chindwara</option>
						<option>Kotha</option>
						<option>Jaipur</option>
						<option>Mirzapur</option>
						</select>
					</div>
					</div>
					<div class="col-lg-6">
					<div class="form-group">
						<label>State</label>
						<select id="state" name="state" class="form-control">
						<option>Select State</option>
						<option>Maharashtra</option>
						<option>Madhya Pradesh</option>
						<option>Punjab</option>
						<option>Rajasthan</option>
						<option>Uttar Pradesh</option>
						</select>
					</div>
					</div>
					</div>
					<div class="form-group">
						<label>Login ID</label><input type="text" class="form-control"
							id="loginid" name="loginid">
					</div>
					<div class="form-group">
						<label>Password</label><input type="password" class="form-control"
							id="password" name="password">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary">SUBMIT</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>