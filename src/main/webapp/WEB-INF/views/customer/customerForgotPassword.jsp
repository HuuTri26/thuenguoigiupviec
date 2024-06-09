<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">

<head>
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
						<div class="img" >
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
							<form:form action="customerForgotPassword.htm"
								class="signin-form" modelAttribute="customerAcc">
								<div>Quên mật khẩu? Không thành vấn đề, chúng tôi sẽ lấy
									lại nó cho bạn Hãy nhập email mà bạn thiết lập làm tài khoản
									xuống dưới đây để xác nhận và thực hiện xác thực OTP qua email
									của bạn. Khi hoàn tất bạn sẽ có thể thiết lập mật khẩu mới cho
									tài khoản này.</div>
								<br />
								<div class="form-group mb-3">
									<label class="label" for="name">Email</label>
									<form:input path="email" class="form-control"
										placeholder="Email" />
									<form:errors path="email" />
								</div>
								<div class="form-group">
									<button type="submit"
										class="form-control btn btn-primary rounded submit px-3">
										Xác nhận</button>
								</div>
							</form:form>
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