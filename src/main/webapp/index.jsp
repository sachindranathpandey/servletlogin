<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/style.css">

<title>Login Page</title>
</head>

<body>


	
		
	<div class="wrapper">

		<div class="box" style="display: flex;align-items: center;justify-content: center;">
			<img src="images/gmail.png" alt="logo" width="100" height="100">
		</div>

		<div
			style="background-color: red; text-align: center; border-radius: 20px" id="test1">
			<p >${error}</p>
		</div>
		<div style="background-color: orange; text-align: center; border-radius: 20px" id="test2">
			<p >${success}</p>
		</div>

		<div style="background-color: red; text-align: center; border-radius: 20px"  id="test3">
			<p>${loginmessage}</p>
		</div>




		<!---------------Sign-in----------------->


		<div class="form-container">
			<div class="slide-controls">
				<input type="radio" name="slide" id="login" checked> <input
					type="radio" name="slide" id="signup"> <label for="login"
					class="slide login">Login</label> <label for="signup"
					class="slide signup">Signup</label>
				<div class="slider-tab"></div>
			</div>
			<div class="form-inner">
				<form action="login" class="login" method="post">
					<div class="field">
						<input type="email" name="email" placeholder="Email Address"
							required>
					</div>
					<div class="field">
						<input type="password" name="password" placeholder="Password"
							required>
					</div>
					<div class="pass-link">
						<a href="#">Forgot password?</a>
					</div>
					<div class="field btn">
						<div class="btn-layer"></div>
						<input type="submit" value="Login">
					</div>
					<div class="signup-link">
						Not a member? <a href="">Signup now</a>
					</div>
				</form>

				<!--------------------Sign-up-------------------->

				<form action="signup" class="signup" method="post">

					<div class="field">
						<input type="name" placeholder="Name" required name="name">
					</div>
					<div class="field">
						<input type="email" placeholder="Email Address" required
							name="email">
					</div>
					<div class="field">
						<input type="password" placeholder="Password" required
							name="password">
					</div>
					<div class="field">
						<input type="password" placeholder="Confirm password" required
							name="cpassword">
					</div>
					<div class="field btn">
						<div class="btn-layer"></div>
						<input type="submit" value="Signup">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="js/script.js"></script>
</body>

</html>