<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">

<head>
	<title>Quên mật khẩu</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="<c:url value='/resources/login/css/style.css'/>">

</head>

<body>
	<section class="ftco-section">
		<div class="container">
			<!-- <div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login </h2>
				</div>
			</div> -->
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(images/Logo1.png);">
						</div>
						<div class="login-wrap p-4 p-md-4">
							<div class="d-flex">
								<div class="w-100 ">
									<h4 class="mb-12">Quên mật khẩu</h4>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<!-- <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a> -->
									</p>
								</div>
							</div>
							<form action="adminForgotPassword.htm" class="signin-form" method="post">
                                <div>
                                    Forgot your password? No problem, we will fix it. Just type your email below and we will send you password recovery instructions to your email. Follow easy steps to get back to your account.
                                </div>
                                <br />
								<div class="form-group mb-3">
									<label class="label" for="name">Email</label>
									<input name="email" type="text" class="form-control" placeholder="Email" required>
								</div>
								<!-- <div class="form-group mb-3">
									<label class="label" for="password">Password</label>
									<input type="password" class="form-control" placeholder="Password" required>
								</div>
                                <div class="form-group mb-3">
									<label class="label" for="changepassword">Confirm Password</label>
									<input type="changepassword" class="form-control" placeholder="Confirm Password" required>
								</div> -->
								<div class="form-group">
									<button type="submit"
										class="form-control btn btn-primary rounded submit px-3"><a href="forgotPasswordOTP.htm">Xác nhận</a></button>
								</div>
								<!-- <div class="form-group d-md-flex">
									<div class="w-100 text-left">
										<label class="checkbox-wrap checkbox-primary mb-0">I Agree To The Terms & Conditions
											<input type="checkbox" checked>
											<span class="checkmark"></span>
										</label>
									</div>
								</div> -->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="<c:url value='/resources/login/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/resources/login/js/popper.js'/>"></script>
	<script src="<c:url value='/resources/login/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/login/js/main.js'/>"></script>

</body>

</html>