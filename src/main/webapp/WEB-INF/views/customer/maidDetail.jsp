<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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

.icon-hover:hover {
	border-color: #3b71ca !important;
	background-color: white !important;
	color: #3b71ca !important;
}

.icon-hover:hover i {
	color: #3b71ca !important;
}
</style>
<style media="screen">
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

.overlay {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 999;
}

.container.mt-3.pt-3 {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 1000;
}

.close-btn {
	cursor: pointer;
}

.close-btn i {
	font-size: 24px;
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
					<li class="dropdown"><a href="customer/index.htm"><span>Account</span> <i
							class="bi bi-chevron-down"></i></a>
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

	<main id="main" style="background-color: white;">
		<!-- content -->
		<section class="py-5" style="margin-top: 70px;">
			<div class="container">
				<div class="row gx-5">
					<aside class="col-lg-6">
						<div class="border rounded-4 mb-3 d-flex justify-content-center">
							<a data-fslightbox="mygalley" class="rounded-4" target="_blank"
								data-type="image"
								href="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/detail1/big.webp">
								<img style="max-width: 100%; max-height: 100vh; margin: auto;"
								class="rounded-4 fit"
								src="https://giupviecnhatanbinh.vn/hoangnhu/upload/images/t%C3%ACm%20ng%C6%B0%E1%BB%9Di%20gi%C3%BAp%20vi%E1%BB%87c%20nh%C3%A0%20t%E1%BA%A1i%20qu%E1%BA%ADn%206%20th%C3%A0nh%20ph%E1%BB%91%20h%E1%BB%93%20ch%C3%AD%20minh.jpg" />
							</a>
						</div>
						<!-- 						<div class="d-flex justify-content-center mb-3"> -->
						<!-- 							<a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
						<!-- 								target="_blank" data-type="image" -->
						<!-- 								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" -->
						<!-- 								class="item-thumb"> <img width="60" height="60" -->
						<!-- 								class="rounded-2" -->
						<!-- 								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" /> -->
						<!-- 							</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
						<!-- 								target="_blank" data-type="image" -->
						<!-- 								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" -->
						<!-- 								class="item-thumb"> <img width="60" height="60" -->
						<!-- 								class="rounded-2" -->
						<!-- 								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" /> -->
						<!-- 							</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
						<!-- 								target="_blank" data-type="image" -->
						<!-- 								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" -->
						<!-- 								class="item-thumb"> <img width="60" height="60" -->
						<!-- 								class="rounded-2" -->
						<!-- 								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" /> -->
						<!-- 							</a> -->
						<!-- 						</div> -->
						<!-- thumbs-wrap.// -->
						<!-- gallery-wrap .end// -->
					</aside>
					<main class="col-lg-6">
						<div class="ps-lg-3">
							<h4 class="title text-dark">
								<br />Họ tên: ${service.name }
							</h4>
							<div class="d-flex flex-row my-3">
								<div class="text-warning mb-1 me-2">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fas fa-star-half-alt"></i> <span class="ms-1">
										4.5 </span>
								</div>
								<span class="text-muted"><i
									class="fas fa-shopping-basket fa-sm mx-1"></i>154 contracts</span> <span
									class="text-success ms-2">${service.status ? 'Rảnh' : 'Bận'}</span>
							</div>

							<div class="mb-3">
								Mức Lương <span class="h5"><fmt:formatNumber
										value="${service.servicePrices[0].price}"
										pattern="#,###.## VND;VND -#,###.##" type="currency"
										currencySymbol="VND" /></span> <span class="text-muted">/tháng</span>
							</div>

							<p>${service.description }</p>

							<div class="row">
								<dt class="col-3">Số điện thoại:</dt>
								<dd class="col-9">${service.name }</dd>

								<dt class="col-3">Kinh nghiệm</dt>
								<dd class="col-9">${service.category.name }</dd>

								<dt class="col-3">Địa chỉ:</dt>
								<dd class="col-9">${service.time }h</dd>

								<dt class="col-3">Email:</dt>
								<dd class="col-9">${service.maidQuantity }</dd>
							</div>

							<hr />
							<a href="#">
								<button class="btn btn-warning shadow-0"
									${!service.status ? '' : ''}>${service.status ? 'Ký hợp đồng' : 'Xem'}</button>
							</a>

						</div>
					</main>
				</div>
			</div>
		</section>
		<!-- 		<div class="container rounded bg-white mt-5 mb-5"> -->
		<!-- 			<div class="row"> -->
		<!-- 				<div class="col-md-3 border-right"> -->
		<!-- 					<div -->
		<!-- 						class="d-flex flex-column align-items-center text-center p-3 py-5"> -->
		<!-- 						<img class="rounded-circle mt-5" width="150px" -->
		<!-- 							src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span -->
		<!-- 							class="font-weight-bold">Huu Tri</span><span -->
		<!-- 							class="text-black-50">maid@mail.com</span><span> </span> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-5 border-right"> -->
		<!-- 					<div class="p-3 py-5"> -->
		<!-- 						<div -->
		<!-- 							class="d-flex justify-content-between align-items-center mb-3"> -->
		<!-- 							<h4 class="text-right">Profile</h4> -->
		<!-- 						</div> -->
		<!-- 						<div class="row mt-3"> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Họ tên</label><input type="text" -->
		<!-- 									class="form-control" placeholder="FullName" value="Hữu Trí" -->
		<!-- 									name="fullName" disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 						<div class="row mt-3"> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Số điện thoại</label><input type="text" -->
		<!-- 									class="form-control" placeholder="Phonenumber" -->
		<!-- 									value="0903289232" name="phonenumber" disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Địa chỉ làm việc</label><input type="text" -->
		<!-- 									class="form-control" placeholder="Địa chỉ: " -->
		<!-- 									value="Hồ Chí Minh" name="address" disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 														<div class="col-md-12"> -->
		<!-- 															<label class="labels">Address Line 2</label><input type="text" -->
		<!-- 																class="form-control" placeholder="enter address line 2" -->
		<!-- 																value=""> -->
		<!-- 														</div> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Kinh nghiệm</label><input type="number" -->
		<!-- 									class="form-control" placeholder="Kinh nghiệm" value="2" -->
		<!-- 									name="exp" disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Mức lương</label><input type="number" -->
		<!-- 									class="form-control" placeholder="Mức Lương" value="3000" -->
		<!-- 									name="salary" disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Email</label><input type="email" -->
		<!-- 									class="form-control" placeholder="Nhập email" -->
		<!-- 									value="maid@gmail.com" disabled="disabled"> -->
		<!-- 							</div> -->

		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Fulltime/Partime</label><input type="text" -->
		<!-- 									class="form-control" placeholder="" value="Fulltime" -->
		<!-- 									disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 							<div class="col-md-12"> -->
		<!-- 								<label class="labels">Trạng thái làm việc</label><input -->
		<!-- 									type="text" class="form-control" placeholder="Trạng thái" -->
		<!-- 									value="Đang làm việc" disabled="disabled"> -->
		<!-- 							</div> -->
		<!-- 						</div> -->
		<!-- 												<div class="row mt-3"> -->
		<!-- 													<div class="col-md-6"> -->
		<!-- 														<label class="labels">Country</label><input type="text" -->
		<!-- 															class="form-control" placeholder="country" value=""> -->
		<!-- 													</div> -->
		<!-- 													<div class="col-md-6"> -->
		<!-- 														<label class="labels">State/Region</label><input type="text" -->
		<!-- 															class="form-control" value="" placeholder="state"> -->
		<!-- 													</div> -->
		<!-- 												</div> -->
		<!-- 						<div class="mt-5 text-center"> -->
		<!-- 							<button class="btn btn-primary profile-button" id="sign-contract" -->
		<!-- 								type="button">Ký hợp đồng</button> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 				<div class="col-md-4">
<!-- 					<div class="p-3 py-5"> -->
		<!-- 						<div -->
		<!-- 							class="d-flex justify-content-between align-items-center experience"> -->
		<!-- 							<span>Edit Experience</span><span -->
		<!-- 								class="border px-3 p-1 add-experience"><i -->
		<!-- 								class="fa fa-plus"></i>&nbsp;Experience</span> -->
		<!-- 						</div> -->
		<!-- 						<br> -->
		<!-- 						<div class="col-md-12"> -->
		<!-- 							<label class="labels">Experience in Designing</label><input -->
		<!-- 								type="text" class="form-control" placeholder="experience" -->
		<!-- 								value=""> -->
		<!-- 						</div> -->
		<!-- 						<br> -->
		<!-- 						<div class="col-md-12"> -->
		<!-- 							<label class="labels">Additional Details</label><input -->
		<!-- 								type="text" class="form-control" -->
		<!-- 								placeholder="additional details" value=""> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		-->
		<!-- 			</div> -->
		<!-- 		</div> -->
		<!-- created by @BrCodeSnippets -->
		<div class="container mt-3 pt-3 d-none"
			style="height: 700px; width: 1000px;" id="contract-form">
			<div class="row">
				<div class="col-12">
					<div class="card p-3 bg-form">
						<form class="row g-3">
							<div class="col-12">
								<h1 class="text-center fw-bolder text-white mt-3">Xác nhận
									hợp đồng</h1>
								<hr>
							</div>
							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Bên A</div>
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
							<!-- 							<div class="col-md-6"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="password" class="form-control bg-light border-0 " -->
							<!-- 										id="inputPassword4" placeholder="Informe uma senha segura"> -->
							<!-- 									<label for="inputPassword4" class="form-label">Password</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="address">
									<label for="inputAddress" class="form-label">Địa chỉ</label>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputCity" placeholder="Cidade" name="exp"> <label
										for="inputCity" class="form-label">Kinh nghiệm</label>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-floating">
									<select id="inputState" class="form-select bg-light">
										<option selected>Dọn nhà</option>
										<option selected>Dọn nhà</option>
										<option selected>Dọn nhà</option>
										<option selected>Dọn nhà</option>
									</select> <label for="inputState" class="form-label">Loại công
										việc</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-floating">
									<input type="text" class="form-control bg-light" id="inputZip"
										placeholder="Cep"> <label for="inputZip"
										class="form-label">Tên nhân viên ghi nhận</label>
								</div>
							</div>
							<div class="col-md-2">
								<div class="form-floating">
									<input type="text" class="form-control bg-light" id="inputZip"
										placeholder="Cep" value="fulltime" disabled="disabled">
									<label for="inputZip" class="form-label">Nhân viên
										fulltime</label>
								</div>
							</div>
							<!-- 							<div class="col-12"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<textarea class="form-control" -->
							<!-- 										placeholder="Leave a comment here" id="floatingTextarea" -->
							<!-- 										style="height: 100px"></textarea> -->
							<!-- 									<label for="floatingTextarea">Ghi chú</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck">
									<label class="form-check-label shadow-sm text-white"
										for="gridCheck"> Tôi đồng ý với các điều khỏa sau.<a
										class="legacy illigla">Privacy</a>
									</label>
								</div>
							</div>
							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Bên B</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="date" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="startAt"> <label
										for="inputName">Ngày bắt đầu</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="date" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="startAt"> <label
										for="inputName">Ngày hết hạn</label>
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
							<div class="col-md-4">
								<div class="form-floating">
									<select id="inputState" class="form-select bg-light">
										<option selected>Dọn nhà</option>
										<option selected>Dọn nhà</option>
										<option selected>Dọn nhà</option>
										<option selected>Dọn nhà</option>
									</select> <label for="inputState" class="form-label">Loại công
										việc</label>
								</div>
							</div>
							<!-- 							<div class="col-md-6"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="password" class="form-control bg-light border-0 " -->
							<!-- 										id="inputPassword4" placeholder="Informe uma senha segura"> -->
							<!-- 									<label for="inputPassword4" class="form-label">Password</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->


							<!-- 							<div class="col-12"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="text" class="form-control bg-light " -->
							<!-- 										id="inputAddress" placeholder="1234 Main St" name="address"> -->
							<!-- 									<label for="inputAddress" class="form-label">Địa chỉ</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->

							<!-- 							<div class="col-md-6"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<input type="text" class="form-control bg-light " -->
							<!-- 										id="inputCity" placeholder="Cidade" name="exp"> <label -->
							<!-- 										for="inputCity" class="form-label">Kinh nghiệm</label> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="col-md-4"> -->
							<!-- 								<div class="form-floating"> -->
							<!-- 									<select id="inputState" class="form-select bg-light"> -->
							<!-- 										<option selected>Dọn nhà</option> -->
							<!-- 										<option selected>Trông trẻ</option> -->
							<!-- 										<option selected>Nấu ăn</option> -->
							<!-- 										<option selected>Giặt đồ</option> -->
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
							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control"
										placeholder="Leave a comment here" id="floatingTextarea"
										style="height: 100px"></textarea>
									<label for="floatingTextarea">Ghi chú</label>
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
			// Lấy đối tượng "Buy now" button
			const buyNowBtn = document.querySelector('button.btn.btn-warning');

			// Thêm sự kiện click cho button
			buyNowBtn.addEventListener('click', function(event) {
				event.preventDefault(); // Ngăn chặn hành động mặc định của link

				// Hiển thị div với lớp overlay và toggle
				const formContainer = document
						.querySelector('.container.mt-3.pt-3');
				formContainer.classList.remove('d-none');

				// Thêm lớp overlay
				const overlay = document.createElement('div');
				overlay.classList.add('overlay');
				document.body.appendChild(overlay);

				// Thêm sự kiện click cho overlay để đóng form
				overlay.addEventListener('click', function() {
					formContainer.classList.add('d-none');
					overlay.remove();
				});
			});

			// Lấy đối tượng nút "X"
			const closeBtn = document.querySelector('.close-btn');

			// Thêm sự kiện click cho nút "X"
			closeBtn.addEventListener('click', function() {
				const formContainer = document
						.querySelector('.container.mt-3.pt-3');
				formContainer.classList.add('d-none');
				const overlay = document.querySelector('.overlay');
				overlay.remove();
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