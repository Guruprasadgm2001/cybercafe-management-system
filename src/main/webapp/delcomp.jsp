<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Computer</title>
<%@ include file="includes/head.jsp"%>

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
			<div class="card-header text-center bg-dark  text-white" >Delete Computer</div>
			<div class="card-body">
				<form action="deleteComputer" method="get">

					<div class="form-group">
						<label>Computer-ID</label> <input type="number"
							class="form-control" name="computer-id"
							placeholder="Enter the computerid" required>
					</div>

				

					<div class="text-center">
						<button type="submit" class="btn btn-primary"  onclick=pop() >Delete</button>
					</div>

				</form>
			</div>
		</div>
	</div>
<script>
function pop(){
	swal({
		  title: "Are you sure?",
		  text: "Once deleted, you will not be able to recover this imaginary file!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		    swal("Poof! Your imaginary file has been deleted!", {
		      icon: "success",
		    });
		  } else {
		    swal("Your imaginary file is safe!");
		  }
		});
}
</script>
	<%@ include file="includes/footer.jsp"%>
</div>
</body>
</html>