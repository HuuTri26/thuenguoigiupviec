<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<title>Quên mật khẩu</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<c:url value='/resources/login/css/style.css'/>">

</head>
<base href="${pageContext.servletContext.contextPath}/">

<body>

	<!-- <div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login </h2>
				</div>
			</div> -->
	<main>
		<!-- End Page Title -->

		<section class="ftco-section">
			<div class="container">
				<!-- <div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Login </h2>
				</div>
			</div> -->
				<div class="row justify-content-center">
					<div class="col-md-12 col-lg-10">
						<div class="wrap ">
							<div class=" p-4 p-md-4">

								<h5 class="card-title">Đổi mật khẩu</h5>
								<!--   <p>Browser default validation with using the <code>required</code> keyword. Try submitting the form below. Depending on your browser and OS, you’ll see a slightly different style of feedback.</p>
   -->
								<!-- Browser Default Validation -->

								<!-- Change Password Form -->
								<form>

									<div class="row mb-3">
										<label for="currentPassword"
											class="col-md-4 col-lg-3 col-form-label">Mật khẩu
											hiện tại</label>
										<div class="col-md-8 col-lg-9">
											<input name="password" type="password" class="form-control"
												id="currentPassword">
										</div>
									</div>

									<div class="row mb-3">
										<label for="newPassword"
											class="col-md-4 col-lg-3 col-form-label">Mật khẩu mới</label>
										<div class="col-md-8 col-lg-9">
											<input name="newpassword" type="password"
												class="form-control" id="newPassword">
										</div>
									</div>

									<div class="row mb-3">
										<label for="renewPassword"
											class="col-md-4 col-lg-3 col-form-label">Nhập lại mật
											khẩu</label>
										<div class="col-md-8 col-lg-9">
											<input name="renewpassword" type="password"
												class="form-control" id="renewPassword">
										</div>
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-primary">
											<a href="maid/maidLogin.htm">Đổi mật khẩu</a>
										</button>
									</div>
								</form>
								<!-- End Change Password Form -->

							</div>

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>

	<script src="<c:url value='/resources/login/js/jquery.min.js'/>"></script>
	<script src="<c:url value='/resources/login/js/popper.js'/>"></script>
	<script src="<c:url value='/resources/login/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/login/js/main.js'/>"></script>

</body>

</html>