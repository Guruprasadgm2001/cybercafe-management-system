<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<%@ include file="includes/head.jsp"%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<style>
body, html {
  height: 100%;
}

.bg { 
  
  background-image: url("https://crimsonpublishers.com/images/9.jpg");

  
  height: 100%; 

  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>
</head>
<body>

	<%@ include file="includes/navbar.jsp" %>

   <div class="bg">
<br>
<br>
<br>
<br>
	<div class="container" >
		<div class="card w-50 mx-auto my-6">
			<div class="card-header text-center bg-dark  text-white" >Login</div>
			<div class="card-body">
				<form action="userlog" method="post">

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
				<button type="submit" class="btn btn-primary" onclick=pop()>Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
function pop(){
	swal({
		  title: "Success!",
		  text: "Redirecting in 2 seconds.",
		  type: "success",
		  timer: 200000,
		  showConfirmButton: false
		}, function(){
		      window.location.href = "";
		});
}

</script>
</body>
	<%@ include file="includes/footer1.jsp"%>
</html>