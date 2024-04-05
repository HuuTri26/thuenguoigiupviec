<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
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
								<div class="w-2000 ">
									<h4 class="mb-3">Đăng ký Khách Hàng</h4>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<!-- <a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a> -->
									</p>
								</div>
							</div>
							<form action="customerSignup.htm" class="signin-form">
								<div class="form-group mb-3">
									<label class="label" for="name">Họ Tên</label> <input
										type="text" name="name" class="form-control"
										placeholder="Name" required>

								</div>

								<div class="form-group mb-3">
									<label class="label" for="password">Số điện thoại</label> <input
										type="number" name="phonenumber" class="form-control"
										placeholder="Mobile No" required>
								</div>

								<div class="form-group mb-3">
									<label class="label" for="password">Email</label> <input
										type="email" name="email" class="form-control"
										placeholder="User Name" required>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Địa chỉ</label> <input
										type="text" name="address" class="form-control"
										placeholder="Mobile No" required>
								</div>
								<div class="form-group mb-3">
									<label class="label">Thành Phố</label> <select
										class="form-select" aria-label="Default select example">
										<option selected>Hồ Chí Minh</option>
										<option>Hà Nội</option>
										<option>Đà Nẵng</option>
										<option>Cần Thơ</option>
										<option>Bình Định</option>
									</select>
								</div>
								<!-- 	<div class="form-group mb-3">
									<label class="label" for="password">Vai trò</label> <select
										class="form-select" aria-label="Default select example">
										<option selected>Customer</option>
										<option value="3">Maid</option>
									</select>
								</div> -->
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

							<div class="form-group mb-3">
								<label class="label" for="password">Ngày Sinh</label> <input
									type="date" name="birthday" class="form-control"
									placeholder="Date of Birth" required>
							</div>
							<div class="form-group mb-3">
								<label class="label" for="password">Password</label> <input
									type="password" name="password" class="form-control"
									placeholder="Password" required>
							</div>

							<div class="form-group mb-3">
								<label class="label" for="password">Nhập lại password</label> <input
									type="password" class="form-control" name="re-password"
									placeholder="Re-Enter Password" required>
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