<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<title>Login</title>
<style>
.container {
	margin-top: 100px;
	margin-left: 460px;
	padding: 50px;
	border: solid;
	border-radius: 10px;
}
</style>
</head>
<body>
	<c:set var="seslog" value="${seslog }"></c:set>
	<c:if test="${seslog!=null }">
		<script>
			alert("<c:out value="${seslog}"/>")
		</script>
	</c:if>
	<c:set var="seslog" value="${null }"></c:set>
	<div class="row">
		<div class="col col-lg-4 col-md-4 col-sm-6 col-xs-6">
			<div class="container">
				<h1 style="text-align: center">LOGIN</h1>
				<form action="doLogin" method="post">
					<div class="form-group">
						<label>Login ID</label><input type="text" class="form-control"
							name="loginid" id="loginid">
					</div>
					<div class="form-group">
						<label>Password</label><input type="password" class="form-control"
							name="password" id="password">
					</div>
					<button class="btn btn-primary" type="submit">login</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>