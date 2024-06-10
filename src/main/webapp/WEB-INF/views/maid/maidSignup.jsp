<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<title>Đăng ký</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<c:url value='../resources/login/css/style.css'/>">
</head>

<body>
	<section class="ftco-section">
		<div class="container-fluid">
			<!-- <div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login </h2>
				</div>
			</div> -->
			<div class="row justify-content-center">
				<div class="col-md-8 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img"
							style="background-image: url(images/Logo1.png); margin-left: 5mm; margin-top: 40mm; width: 50ex; height: 50mm;">
						</div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100 ">
									<h3 class="mb-4">Đăng ký Maid</h3>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<!-- <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a> -->
									</p>
								</div>
							</div>
							<form action="maidSignUp.htm" class="signin-form">
								<div class="form-group mb-3">
									<label class="label" for="name">Họ tên</label> <input
										type="text" class="form-control" placeholder="fullName: "
										name="fullName" required>

								</div>

								<div class="form-group mb-3">
									<label class="label" for="password">Số điện thoại</label> <input
										type="text" class="form-control" placeholder="Mobile No"
										name="phonenumber" required>
								</div>

								<div class="form-group mb-3">
									<label class="label" for="password">Địa chỉ</label> <input
										type="text" class="form-control" placeholder="Địa chỉ: "
										name="address" required>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Kinh nghiệm</label> <input
										type="number" class="form-control" placeholder="Exp: "
										name="exp" required>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Full/Partime</label> <select
										class="form-select" id="validationDefault04"
										name="employmentType" required>
										<option selected value="">Fulltime</option>
										<option>Partime</option>
									</select>
								</div>

								<!-- <div class="form-group mb-3">
									<label class="label" for="password">Teacher Year Of Experience</label>
									<input type="password" class="form-control" placeholder="Password" required>
								</div> -->


								<!-- <div class="form-group d-md-flex">
									<div class="w-50 text-left">
										<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
											<input type="checkbox" checked>
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
								</div> -->
							</form>
							<!-- <p class="text-center"><a data-toggle="tab" href="#signup">Sign Up</a></p> -->




						</div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100 ">
									<h3 class="mb-4">
										<br />
									</h3>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<!-- <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a> -->
									</p>
								</div>
							</div>

							<!-- 							<div class="form-group mb-3"> -->
							<!-- 								<label class="label" for="password">Date of Birth</label> -->
							<!-- 								<input type="date" class="form-control" placeholder="Date of Birth" required> -->
							<!-- 							</div> -->
							<div class="form-group mb-3">
								<label class="label" for="password">Mức lương</label> <input
									type="number" class="form-control" placeholder="Salary: "
									name="salary" required>
							</div>

							<div class="form-group mb-3">
								<label class="label" for="password">Email</label> <input
									type="email" class="form-control" placeholder="Email"
									name="email" required>
							</div>
							<div class="form-group mb-3">
								<label class="label" for="password">Password</label> <input
									type="password" class="form-control" placeholder="Password"
									name="password" required>
							</div>

							<div class="form-group mb-3">
								<label class="label" for="password">Re-Enter Password</label> <input
									type="password" class="form-control"
									placeholder="Re-Enter Password" name="re-password" required>
							</div>
							<!-- <div class="form-group mb-3">
								<label class="label" for="password">Teacher Qualification</label>
								<input type="password" class="form-control" placeholder="Password" required>
							</div> -->

							<div class="form-group mb-3">
								<label class="label" style="padding-top: 18px;"></label>
								<button type="submit"
									class="form-control btn btn-primary rounded submit px-3">Đăng
									ký</button>
							</div>
							<!-- <div class="form-group">
								<button type="submit"
									class="form-control btn btn-primary rounded submit px-3">Log In</button>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="<c:url value='../resources/login/js/jquery.min.js'/>"></script>
	<script src="<c:url value='../resources/login/js/popper.js'/>"></script>
	<script src="<c:url value='../resources/login/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='../resources/login/js/main.js'/>"></script>

</body>

</html>