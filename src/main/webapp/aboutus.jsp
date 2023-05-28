<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>About Us</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<style>
.social-link {
	width: 30px;
	height: 30px;
	border: 1px solid #ddd;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #666;
	border-radius: 50%;
	transition: all 0.3s;
	font-size: 0.9rem;
}

.social-link:hover, .social-link:focus {
	background: #ddd;
	text-decoration: none;
	color: #555;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-3">
		<div class="container">
			<a href="https://en.wikipedia.org/wiki/Internet_caf%C3%A9" class="navbar-brand d-flex align-items-center"> <i
				class="fa fa-snowflake-o fa-lg text-primary mr-2"></i><h1><strong>CYBER
					CAFE</strong></h1></a>
			<button type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation" class="navbar-toggler">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div id="navbarSupportedContent" class="collapse navbar-collapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="dashboard.jsp"
						class="nav-link font-italic"> Home </a></li>
				</ul>
			</div>
		</div>
	</nav>

<div class="bg-light">
  <div class="container py-5">
  <img
							src="data:image/png;base64,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52bq07uPenXpovU7dVCiUxtt0L2d1uvUQd27d1SXrm01c8YCzZ6/WHNmLdD0+Ys1Y+YizVuyVFPnLdTMefP08eef6YfPx4SjaGYZGgECPTStYqIIIIAAAgisXYBAZ3UggAACCCDggACB7kATKQEBBBBAAAECnTWAAAIIIICAAwIEugNNpAQEEEAAAQQIdNYAAggggAACDggQ6A40kRIQQAABBBAg0FkDCCCAAAIIOCBAoDvQREpAAAEEEECAQGcNIIAAAggg4IAAge5AEykBAQQQQAABAp01gAACCCCAgAMCBLoDTaQEBBBAAAEECHTWAAIIIIAAAg4IEOgONJESEEAAAQQQINBZAwgggAACCDggQKA70ERKQAABBBBAgEBnDSCAAAIIIOCAAIHuQBMpAQEEEEAAAQKdNYAAAggggIADAgS6A02kBAQQQAABBAh01gACCCCAAAIOCBDoDjSREhBAAAEEECDQWQMIIIAAAgg4IECgO9BESkAAAQQQQIBAZw0ggAACCCDggACB7kATKQEBBBBAAAECnTWAAAIIIICAAwIEugNNpAQEEEAAAQQIdNYAAggggAACDggQ6A40kRIQQAABBBAg0FkDCCCAAAIIOCBAoDvQREpAAAEEEECAQGcNIIAAAggg4IAAge5AEykBAQQQQAABAp01gAACCCCAgAMCBLoDTaQEBBBAAAEECHTWAAIIIIAAAg4IEOgONJESEEAAAQQQINBZAwgggAACCDggQKA70ERKQAABBBBAgEBnDSCAAAIIIOCAAIHuQBMpAQEEEEAAAQKdNYAAAggggIADAgS6A02kBAQQQAABBAh01gACCCCAAAIOCBDoDjSREhBAAAEEECDQWQMIIIAAAgg4IECgO9BESkAAAQQQQIBAZw0ggAACCCDggACB7kATKQEBBBBAAAECnTWAAAIIIICAAwIEugNNpAQEEEAAAQQIdNYAAggggAACDggQ6A40kRIQQAABBBAg0FkDCCCAAAIIOCBAoDvQREpAAAEEEECAQGcNIIAAAggg4IAAge5AEykBAQQQQAABAp01gAACCCCAgAMCBLoDTaQEBBBAAAEECHTWAAIIIIAAAg4IEOgONJESEEAAAQQQINBZAwgggAACCDggQKA70ERKQAABBBBAgEBnDSCAAAIIIOCAAIHuQBMpAQEEEEAAAQKdNYAAAggggIADAgS6A02kBAQQQAABBAh01gACCCCAAAIOCBDoDjSREhBAAAEEECDQWQMIIIAAAgg4IECgO9BESkAAAQQQQIBAZw0ggAACCCDggACB7kATKQEBBBBAAAECnTWAAAIIIICAAwIEugNNpAQEEEAAAQQIdNYAAggggAACDggQ6A40kRIQQAABBBAg0FkDCCCAAAIIOCBAoDvQREpAAAEEEECAQGcNIIAAAggg4IAAge5AEykBAQQQQAABAp01gAACCCCAgAMCBLoDTaQEBBBAAAEECHTWAAIIIIAAAg4IEOgONJESEEAAAQQQINBZAwgggAACCDggQKA70ERKQAABBBBAgEBnDSCAAAIIIOCAAIHuQBMpAQEEEEAAAQKdNYAAAggggIADAgS6A02kBAQQQAABBAh01gACCCCAAAIOCBDoDjSREhBAAAEEECDQWQMIIIAAAgg4IECgO9BESkAAAQQQQIBAZw0ggAACCCDggACB7kATKQEBBBBAAAECnTWAAAIIIICAAwIEugNNpAQEEEAAAQQIdNYAAggggAACDggQ6A40kRIQQAABBBAg0FkDCCCAAAIIOCBAoDvQREpAAAEEEECAQGcNIIAAAggg4IAAge5AEykBAQQQQAABAp01gAACCCCAgAMCBLoDTaQEBBBAAAEECHTWAAIIIIAAAg4IEOgONJESEEAAAQQQINBZAwgggAACCDggQKA70ERKQAABBBBAgEBnDSCAAAIIIOCAAIHuQBMpAQEEEEAAAQKdNYAAAggggIADAgS6A02kBAQQQAABBAh01gACCCCAAAIOCBDoDjSREhBAAAEEECDQWQMIIIAAAgg4IECgO9BESkAAAQQQQIBAZw0ggAACCCDggACB7kATKQEBBBBAAAECnTWAAAIIIICAAwIEugNNpAQEEEAAAQQIdNYAAggggAACDggQ6A40kRIQQAABBBAg0FkDCCCAAAIIOCBAoDvQREpAAAEEEECAQGcNIIAAAggg4IAAge5AEykBAQQQQAABAp01gAACCCCAgAMCBLoDTaQEBBBAAAEECHTWAAIIIIAAAg4IEOgONJESEEAAAQQQINBZAwgggAACCDgg4AU6DwQQQAABBBAIucD/Bzl2PnpQelKNAAAAAElFTkSuQmCC"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
  <h3>BG MAKES</h3>
    <div class="row h-100 align-items-center py-5">
      <div class="col-lg-6">
        <h1 class="display-4">Project Description</h1><br><br>
        <p class="lead text-muted mb-0">Cyber cafe management refers to the process of running and maintaining a computer lab or internet cafe. This includes tasks such as setting up and configuring computers, managing software and internet access, monitoring customer usage, and maintaining the physical space. In addition, it may also involve managing finances, such as setting prices and collecting payments. Effective cyber cafe management requires a combination of technical and business skills</p>
        <p class="lead text-muted"><a href="https://bootstrapious.com/snippets" class="text-muted"> 
                    <u></u></a>
        </p>
      </div>
      <div class="col-lg-6 d-none d-lg-block">
      <img src="https://o.remove.bg/downloads/c09702c3-8372-4dd0-bf5c-c7eff26b0a6d/WhatsApp_Image_2023-01-25_at_10.42.10_PM-removebg-preview-removebg-preview.png" alt="" class="img-fluid"></div>
    </div>
  </div>
</div>
	<div class="bg-light py-5">
		<div class="container py-5">
			<div class="row mb-4">
				<div class="col-lg-5">
					<h2 class="display-4 font-weight-light">Our Team</h2>
					
				</div>
			</div>

			<div class="row text-center">
				<!-- Team item-->

				<!-- End-->

				<!-- Team item-->
				<div class="col-xl-3 col-sm-6 mb-5">
					<div class="bg-white rounded shadow-sm py-5 px-4">
						<img
							src="https://o.remove.bg/downloads/76b09a3c-28ce-4fd7-b91f-c71cb0ac87c9/WhatsApp_Image_2023-01-25_at_23.05.10-removebg-preview-removebg-preview.png"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
						<h5 class="mb-0">B BHANU TEJA</h5>
						<span class="small text-uppercase text-muted"></span>
						<ul class="social mb-0 list-inline mt-3">
							<li class="list-inline-item"><a
								class="btn btn-outline-dark btn-floating m-1"
								href="https://www.instagram.com/mr.netha03/" role="button"><i
									class="fab fa-instagram"></i></a></li>
							
							<li class="list-inline-item"><a
								class="btn btn-outline-dark btn-floating m-1"
								href="https://www.linkedin.com/in/bhanu-teja-705398240/" role="button"><i
									class="fab fa-linkedin-in"></i></a></li>
							<li class="list-inline-item"><a
								class="btn btn-outline-dark btn-floating m-1"
								href="https://github.com/mrbhanu" role="button"><i
									class="fab fa-github"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End-->

				<!-- Team item-->
				<div class="col-xl-3 col-sm-6 mb-5">
					<div class="bg-white rounded shadow-sm py-5 px-4">
						<img
							src="https://o.remove.bg/downloads/b71c2d45-efe7-42c5-9dae-19a61ef08378/GUGG-removebg-preview-removebg-preview-removebg-preview.png"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
						<h5 class="mb-0">GURUPRASAD G M</h5>
						<span class="small text-uppercase text-muted"></span>
						<ul class="social mb-0 list-inline mt-3">
							<li class="list-inline-item"><a
								class="btn btn-outline-dark btn-floating m-1"
								href="https://www.instagram.com/guruprasad704/" role="button"><i
									class="fab fa-instagram"></i></a></li>
							
							<li class="list-inline-item"><a
								class="btn btn-outline-dark btn-floating m-1"
								href="https://www.linkedin.com/in/vikas-gm-vicky-6b1a99220/" role="button"><i
									class="fab fa-linkedin-in"></i></a></li>
							<li class="list-inline-item"><a
								class="btn btn-outline-dark btn-floating m-1"
								href="https://github.com/Guruprasadgm2001" role="button"><i
									class="fab fa-github"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End-->

				<!-- Team item-->

				<!-- End-->

			</div>
		</div>
	</div>


	<footer class="bg-light pb-5">
		<div class="container text-center">
			<p class="font-italic text-muted mb-0">&copy; Copyrights
				Company.com All rights reserved To BGMAKES Group.</p>
		</div>
	</footer>
</body>
</html>