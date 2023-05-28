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
					<li class="nav-item"><a class="nav-link text-white" href="computer.jsp">BACK</a></li>
					
				</ul>

			</div>
		</div>
	</nav>
<br><br><br><br>
	<div class="container" >
		<div class="card w-50 mx-auto my-6">
			<div class="card-header text-center bg-dark  text-white" >Update Computer</div>
			<div class="card-body">
				<form action="updateComputer" method="get">

					<div class="form-group">
						<label>Computer-ID</label> <input type="number"
							class="form-control" name="computer-id"
							placeholder="Enter the C-ID" required>
					</div>

					<div class="form-group">
						<label>Computer-Name</label> <input type="text"
							class="form-control" name="computer-name"
							placeholder="Enter the C-Name" required>
					</div>

					
					<div class="form-group">
						<label>User-ID</label> <input type="number"
							class="form-control" name="user-id"
							placeholder="Enter the User-Id" required>
					</div>
					
					
					<div class="text-center">
						<button type="submit" class="btn btn-primary">UPDATE</button>
					</div>

				</form>
			</div>
		</div>
		</div>
	</div>

	<%@ include file="includes/footer.jsp"%>
</div>

</body>
</html>