<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add computer</title>
<%@ include file="includes/head.jsp"%>

</head>
<body>
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
					<li class="nav-item"><a class="nav-link text-white" href="worker.jsp">BACK</a></li>
					
				</ul>

			</div>
		</div>
	</nav>
<br><br><br><br>
	<div class="container" >
		<div class="card w-50 mx-auto my-6">
			<div class="card-header text-center bg-dark  text-white" >Add Worker</div>
			<div class="card-body">
				<form action="workadd" method="get">

					<div class="form-group">
						<label>Worker ID</label> <input type="number"
							class="form-control" name="worker-id"
							placeholder="Enter the worker-id" required>
					</div>

					<div class="form-group">
						<label>Worker Role</label> <input type="text"
							class="form-control" name="worker-role"
							placeholder="Enter the role" required>
					</div>
					
					<div class="form-group">
						<label>Salary</label> <input type="number"
							class="form-control" name="worker-salary"
							placeholder="Enter the salary" required>
					</div>
                    <div class="form-group">
						<label>Admin ID</label> <input type="number"
							class="form-control" name="admin"
							placeholder="Enter the admin" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">ADD</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>