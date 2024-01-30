<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Style CSS -->
<link rel="stylesheet" href="./dbitems/style.css">
<!-- Demo CSS (No need to include it into your project) -->
<link rel="stylesheet" href="./dbitems/demo.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
</head>
<body>

	<main class="cd__main">
		<!-- Start DEMO HTML (Use the following code into your project)-->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<div class="box" style="display: flex;align-items: center;justify-content: center;">
			<img src="images/gmail.png" alt="logo" width="60" height="60">
		</div>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								Dropdown </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="#">Something else
										here</a></li>
							</ul></li>
					</ul>
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0 profile-menu">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<div class="profile-pic">
									<img src="https://source.unsplash.com/250x250?girl"
										alt="Profile Picture">
								</div> <!-- You can also use icon as follows: --> <!--  <i class="fas fa-user"></i> -->
						</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#"><i
										class="fas fa-sliders-h fa-fw"></i> Account</a></li>
								<li><a class="dropdown-item" href="#"><i
										class="fas fa-cog fa-fw"></i> Settings</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="index.jsp"><i
										class="fas fa-sign-out-alt fa-fw"></i> Log Out</a></li>
							</ul></li>
					</ul>
				</div>
				
			</div>
		</nav>
		
		<div>
		       <h1> Hi ${name}</h1>
		       <h2> Welcome to Tech Blog... Start your writing journey here....</h2>
							
		</div>
		<div>
		       <h4>Coming soon...............</h4>
							
		</div>
		
		
		<!-- END EDMO HTML (Happy Coding!)-->
	</main>
	<footer class="cd__credit">
		Author: Rehan - Distributed By: <a
			title="Free web design code & scripts"
			href="https://www.codehim.com?source=demo-page" target="_blank">CodeHim</a>
	</footer>
	<script
		src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js'></script>
	<!-- Script JS -->
	<script src="./dbitems/script.js"></script>
	<!--$%analytics%$-->
</body>
</html>