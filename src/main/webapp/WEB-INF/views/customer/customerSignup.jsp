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
								<div class="w-2000 ">
									<h4 class="mb-3">Đăng ký Khách Hàng</h4>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end"></p>
								</div>
							</div>
							<form:form action="customer/customerSignup.htm" method="post"
								modelAttribute="newCustomer" class="signin-form">

								<div class="form-group mb-3">
									<label class="label" for="name">Email</label> <input
										type="text" value="${email }" class="form-control"
										readonly="readonly" />
								</div>

								<div class="form-group mb-3">
									<label class="label" for="name">Họ Tên</label>
									<form:input type="text" path="fullName" class="form-control"
										placeholder="Tên của bạn" />
									<form:errors path="fullName" />

								</div>

								<div class="form-group mb-3">
									<label class="label" for="password">Số điện thoại</label>
									<form:input type="text" path="phoneNumber" class="form-control"
										placeholder="Số điện thoại" />
									<form:errors path="phoneNumber" />
								</div>


								<div class="form-group mb-3">
									<label class="label" for="password">Địa chỉ</label>
									<form:input type="text" path="address" class="form-control"
										placeholder="Địa chỉ" />
									<form:errors path="address" />
								</div>

								<!-- 								<div class="form-group mb-3"> -->
								<!-- 									<label class="label" for="password">Email</label> -->
								<%-- 									<form:input type="text" path="email" class="form-control" --%>
								<%-- 										placeholder="Email" /> --%>
								<!-- 								</div> -->
								<div class="form-group mb-3">
									<label class="label" for="password">Password</label>
									<form:input type="password" path="account.password"
										class="form-control" placeholder="Password" />
								</div>

								<div class="form-group mb-3">
									<label class="label" for="password">Nhập lại password</label> <input
										type="password" class="form-control" name="re-password"
										placeholder="Re-Enter Password" required>
									<form:errors path="account.password" />
								</div>
								<div class="form-group mb-3">
									<label class="label" style="padding-top: 18px;"></label>
									<button type="submit"
										class="form-control btn btn-primary rounded submit px-3"
										name="signup">Đăng ký</button>
								</div>

							</form:form>

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