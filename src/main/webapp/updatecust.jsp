<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Computer</title>
<%@ include file="includes/head.jsp" %>
</head>
<body>

	

   <div class="bg">
<nav class="navbar navbar-expand-lg bg-dark  text-white">
		<div class="container">
			<a class="navbar-brand text-white" href="index.jsp">CyberCafe</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link text-white" href="customer.jsp">BACK</a></li>
					
				</ul>

			</div>
		</div>
	</nav>
<br><br><br><br>

	<div class="container" >
		<div class="card w-50 mx-auto my-6">
			<div class="card-header text-center bg-dark  text-white" >Update Customer</div>
			<div class="card-body">
				<form action="updateUser" method="get">

					<div class="form-group">
						<label>Customer ID</label> <input type="number"
							class="form-control" name="customer-id"
							placeholder="Enter the ID" required>
					</div>

					<div class="form-group">
						<label>Customer Name</label> <input type="text"
							class="form-control" name="customer-name"
							placeholder="Enter the Name" required>
					</div>
					
					<div class="form-group">
						<label>Customer phone</label> <input type="number"
							class="form-control" name="customer-phone"
							placeholder="Enter the phone Number" required>
					</div>
					
					<div class="form-group">
						<label>Customer Email</label> <input type="email"
							class="form-control" name="customer-email"
							placeholder="Enter the Email" required>
					</div>
					
					<div class="form-group">
						<label>Customer WorkerId</label> <input type="number"
							class="form-control" name="customer-workerid"
							placeholder="Enter the WorkerId" required>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">ADD</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<%@ include file="includes/footer.jsp"%>
</div>

</body>
</html>