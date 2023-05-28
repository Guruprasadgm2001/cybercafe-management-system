<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FeedBack</title>
<%@ include file="includes/head.jsp"%>
<style>
body, html {
  height: 100%;
}

.bg { 
  /* The image used */
  background-image: url("https://crimsonpublishers.com/images/9.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
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
	<div class="container" >
		<div class="card w-50 mx-auto my-6">
			<div class="card-header text-center bg-dark  text-white" >Worker Login</div>
			<div class="card-body">
				<form action="worker" method="get">

					<div class="form-group">
						<label>WorkerID</label> <input type="number"
							class="form-control" name="worker_id"
							placeholder="Enter the Worker_ID" required>
					</div>
				

					<div class="text-center">
						<button type="submit" class="btn btn-primary">SUBMIT</button>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="includes/footer1.jsp"%>
</html>