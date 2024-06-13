<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Maid Detail</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="<c:url value='/resources/main/assets/img/favicon.png'/>"
	rel="icon">
<link
	href="<c:url value='/resources/main/assets/img/apple-touch-icon.png'/>"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"
	rel="stylesheet">

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	rel="stylesheet">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="<c:url value='/resources/main/assets/vendor/aos/aos.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/bootstrap-icons/bootstrap-icons.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/boxicons/css/boxicons.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/glightbox/css/glightbox.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/main/assets/vendor/swiper/swiper-bundle.min.css'/>"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<c:url value='/resources/main/assets/css/style.css'/>"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- =======================================================
  * Template Name: Maxim - v4.8.0
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
body {
	background: rgb(99, 39, 120)
}

.form-control:focus {
	box-shadow: none;
	border-color: #BA68C8
}

.profile-button {
	background: rgb(99, 39, 120);
	box-shadow: none;
	border: none
}

.profile-button:hover {
	background: #682773
}

.profile-button:focus {
	background: #682773;
	box-shadow: none
}

.profile-button:active {
	background: #682773;
	box-shadow: none
}

.back:hover {
	color: #682773;
	cursor: pointer
}

.labels {
	font-size: 11px
}

.add-experience:hover {
	background: #BA68C8;
	color: #fff;
	cursor: pointer;
	border: solid 1px #BA68C8
}

.form-control, .form-select {
	border: 0;
}

.form-control:focus, .form-select:focus {
	-webkit-box-shadow: none;
	box-shadow: none;
}

.bg-form {
	background-color: #383434;
}

.bg-button-submit {
	background-color: #282828;
}

#contract-form {
	display: block;
}
</style>
</head>

<body>
	<%-- 	<%@include file="/WEB-INF/views/customer/include/header.jsp"%> --%>
	<header id="header" class="fixed-top d-flex align-items-center">
		<div class="container d-flex justify-content-between">

			<div class="logo">
				<h1>
					<a href="customer/index.htm">BookMyMaid</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>
			<nav id="navbar" class="navbar">
				<ul>
					<li class="dropdown"><a href="customer/index.htm"><span>Account</span>
							<i class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="customer/customerProfile.htm">Trang cá nhân</a></li>
							<li><a href="customer/updateCustomer.htm">Cập nhật thông
									tin</a></li>
							<li><a href="customer/customerChangePassword.htm">Đổi
									mật khẩu</a></li>
							<li><a href="customer/bookingManagement.htm">Xem danh
									sách </a></li>
							<li><a href="customer/contractManagement.htm">Xem danh
									sách đặt dịch vụ</a></li>
							<li><a href="customer/billManagement.htm">Xem danh bill</a></li>
							<li><a href="#">Log out</a></li>

						</ul></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>

		</div>
	</header>

	<main id="main" style="background-color: gray;" class="mt-10">

		<!-- created by @BrCodeSnippets -->
		<div class="container mt-5 pt-3" id="contract-form">

			<div class="row">
				<div class="col-12">

					<div class="card p-3 bg-form">
						<a href="customer/contractManagement.htm"> <i
							class="fa fa-times" aria-hidden="true"
							style="font-size: 50px; cursor: pointer; color: white; float: right;"></i>
						</a>
						<form class="row g-3  mt-5">

							<div class="col-12">

								<h1 class="text-center fw-bolder text-white mt-3">Hợp đồng</h1>
								<hr>
							</div>
							<!-- 							<div class="col-12"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="date" autocomplete="off" -->
							<!-- 										class="form-control bg-light " id="inputName" -->
							<!-- 										placeholder="Name" name="startAt"> <label -->
							<!-- 										for="inputName">Ngày bắt đầu</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="col-12"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="date" autocomplete="off" -->
							<!-- 										class="form-control bg-light " id="inputName" -->
							<!-- 										placeholder="Name" name="startAt"> <label -->
							<!-- 										for="inputName">Ngày hết hạn</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12">
								<div class="form-floating">
									<input type="datetime-local" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="createAt"> <label
										for="inputName">Ngày tạo</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="datetime-local" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="startAt"> <label
										for="inputName">Ngày bắt đầu</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="datetime-local" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="endAt"> <label
										for="inputName">Ngày kết thúc</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control"
										placeholder="Leave a comment here" id="floatingTextarea"
										style="height: 100px"></textarea>
									<label for="floatingTextarea">Ghi chú</label>
								</div>
							</div>
							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Khách hàng</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="fullName"> <label
										for="inputName">Họ tên</label>
								</div>
							</div>
							<div class="col-12 ">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputEmail4" placeholder="Số điện thoại: "
										name="phonenumber"> <label for="inputEmail4">Số
										điện thoại</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="address">
									<label for="inputAddress" class="form-label">Địa chỉ</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="email" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="email">
									<label for="inputAddress" class="form-label">Email</label>
								</div>
							</div>


							<!-- 							<div class="col-md-4"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<select id="inputState" class="form-select bg-light"> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 									</select> <label for="inputState" class="form-label">Loại công -->
							<!-- 										việc</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-md-2">
								<div class="form-floating">
									<input type="text" class="form-control bg-light" id="inputZip"
										placeholder="Cep"> <label for="inputZip"
										class="form-label">Tên nhân viên ghi nhận</label>
								</div>
							</div>
							<!-- 							<div class="col-md-2"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="text" class="form-control bg-light" id="inputZip" -->
							<!-- 										placeholder="Cep" value="fulltime" disabled="disabled"> -->
							<!-- 									<label for="inputZip" class="form-label">Nhân viên -->
							<!-- 										fulltime</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Maid</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="fullName"> <label
										for="inputName">Họ tên</label>
								</div>
							</div>
							<div class="col-12 ">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputEmail4" placeholder="Số điện thoại: "
										name="phonenumber"> <label for="inputEmail4">Số
										điện thoại</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="address">
									<label for="inputAddress" class="form-label">Địa chỉ</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="email" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="email">
									<label for="inputAddress" class="form-label">Email</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputCity" placeholder="Cidade" name="exp"> <label
										for="inputCity" class="form-label">Kinh nghiệm</label>
								</div>
							</div>
							<!-- 							<div class="col-md-4"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<select id="inputState" class="form-select bg-light"> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 									</select> <label for="inputState" class="form-label">Loại công -->
							<!-- 										việc</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-md-4">
								<div class="form-floating">
									<input type="text" class="form-control bg-light" id="inputZip"
										placeholder="Cep"> <label for="inputZip"
										class="form-label">Tên nhân viên ghi nhận</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck">
									<label class="form-check-label shadow-sm text-white"
										for="gridCheck"> Tôi đồng ý với các điều khỏa sau.<a
										class="legacy illigla">Privacy</a>
									</label>
								</div>
							</div>
							<div class="col-12 text-end">
								<button type="submit"
									class="btn bg-button-submit w-100 bg-gradient p-3 text-center mb-2 text-white fw-bolder fs-3">Xác
									nhận hợp đồng</button>
								<a href="#" class="text-primary shadow-sm">.</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>

		<script>
			const sc = document.getElementById('sign-contract');
			const cf = document.getElementById('contract-form');

			button.addEventListener('click', function() {
				if (cf.style.display === 'none') {
					cf.style.display = 'block';
				} else {
					cf.style.display = 'none';
				}
			});
		</script>

	</main>
	<%@include file="/WEB-INF/views/customer/include/footer.jsp"%>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="<c:url value='/resources/main/assets/vendor/aos/aos.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/glightbox/js/glightbox.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/isotope-layout/isotope.pkgd.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/swiper/swiper-bundle.min.js'/>"></script>
	<script
		src="<c:url value='/resources/main/assets/vendor/php-email-form/validate.js'/>"></script>

	<!-- Template Main JS File -->
	<script src="<c:url value='/resources/main/assets/js/main.js'/>"></script>
</body>
</html>