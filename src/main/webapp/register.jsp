<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="includes/head.jsp"%>
<style>
body, html {
	height: 100%;
}

.bg {
	


	height: 100%;
	
	background:url("https://crimsonpublishers.com/images/9.jpg");
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>

	<%@ include file="includes/navbar.jsp"%>

	<div class="bg" imgsrc="C:\Users\91797\Downloads\pexels-pixabay-267507.jpg">
	<br><br><br><br>
		<div class="container">
			<div class="card w-50 mx-auto my-6">
				<div class="card-header text-center bg-dark  text-white">Registration</div>
				<div class="card-body">
					<form action="Userreg" method="post">


						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								name="login-name" placeholder="Enter the Name" required>
						</div>


						<div class="form-group">
							<label>Email Address</label> <input type="email"
								class="form-control" name="login-email"
								placeholder="Enter the Email" required>
						</div>

						<div class="form-group">
							<label>Password</label> <input type="password"
								class="form-control" name="login-password"
								placeholder="Enter the passwrod" required>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary">Register</button>
						</div>

					</form>
				</div>
			</div>
		</div>


		<%@ include file="includes/footer.jsp"%>

	</div>
</body>
	<%@ include file="includes/footer1.jsp"%>
</html>