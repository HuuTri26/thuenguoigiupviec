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

<title>Maid List</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Modal -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

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

		</div>
	</header>

	<main id="main">

		<!-- content -->
		<section class="py-5" style="margin-top: 50px;">
			<div class="container">
				<div class="row gx-5">
					<aside class="col-lg-6">
						<div class="border rounded-4 mb-3 d-flex justify-content-center">
							<a data-fslightbox="mygalley" class="rounded-4" target="_blank"
								data-type="image"
								href="https://mdbcdn.b-cdn.net/img/bootstrap-ecommerce/items/detail1/big.webp">
								<img style="max-width: 100%; max-height: 100vh; margin: auto;"
								class="rounded-4 fit"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a>
						</div>
						<div class="d-flex justify-content-center mb-3">
							<a data-fslightbox="mygalley" class="border mx-1 rounded-2"
								target="_blank" data-type="image"
								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
								class="item-thumb"> <img width="60" height="60"
								class="rounded-2"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2"
								target="_blank" data-type="image"
								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
								class="item-thumb"> <img width="60" height="60"
								class="rounded-2"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2"
								target="_blank" data-type="image"
								href="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w"
								class="item-thumb"> <img width="60" height="60"
								class="rounded-2"
								src="https://images.squarespace-cdn.com/content/v1/5692fb8a5a566828b96c5bf0/1453150819608-Z0SGDXSAFJGZDY5RHERW/hire-maid-cleaning-lady-toronto-north-york.jpg?format=1500w" />
							</a>
						</div>
						<!-- thumbs-wrap.// -->
						<!-- gallery-wrap .end// -->
					</aside>
					<main class="col-lg-6">
						<div class="ps-lg-3">
							<h4 class="title text-dark">
								<br />${service.name }
							</h4>
							<div class="d-flex flex-row my-3">
								<div class="text-warning mb-1 me-2">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fas fa-star-half-alt"></i> <span class="ms-1">
										4.5 </span>
								</div>
								<span class="text-muted"><i
									class="fas fa-shopping-basket fa-sm mx-1"></i>154 orders</span> <span
									class="text-success ms-2">${service.status ? 'Đang hoạt động' : 'Ngưng hoạt động'}</span>
							</div>

							<div class="mb-3">
								<span class="h5"><fmt:formatNumber
										value="${service.servicePrices[0].price}"
										pattern="#,###.## VND;VND -#,###.##" type="currency"
										currencySymbol="VND" /></span> <span class="text-muted">/gói</span>
							</div>

							<p>${service.description }</p>

							<div class="row">
								<dt class="col-3">Tên:</dt>
								<dd class="col-9">${service.name }</dd>

								<dt class="col-3">Loại</dt>
								<dd class="col-9">${service.category.name }</dd>

								<dt class="col-3">Số giờ</dt>
								<dd class="col-9">${service.time }h</dd>

								<dt class="col-3">Số lượng người giúp việc</dt>
								<dd class="col-9">${service.maidQuantity }</dd>
							</div>

							<hr />

							<a href="#">
								<button class="btn btn-warning shadow-0"
									${!service.status ? 'disabled' : ''}>${service.status ? 'Đặt ngay' : 'Không khả dụng'}</button>
							</a>

						</div>
					</main>
				</div>
			</div>
		</section>

		<div class="container mt-3 pt-3 d-none"
			style="height: 700px; width: 1000px;">
			<div class="row">
				<div class="col-12">
					<div class="card p-3 bg-form position-relative">
						<div class="close-btn position-absolute top-0 end-0 p-3">
							<i class="fas fa-times text-white"></i>
						</div>
						<form:form class="row g-3"
							action="customer/serviceList/serviceDetail/booking/${service.id }.htm"

							method="post" modelAttribute="booking">
							<div class="col-12">
								<h1 class="text-center fw-bolder text-white mt-3">Form đặt
									dịch vụ</h1>
								<hr>
							</div>
							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Điền thông tin đặt dịch vụ</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<form:input path="startTime" autocomplete="off"
										class="form-control bg-light " type="datetime-local"
										id="startTime" placeholder="Name" />
									<label for="inputName">Ngày bắt đầu</label>
									<form:errors path="startTime" />
								</div>
							</div>

							<div class="col-12">
								<div class="form-floating">
									<form:input path="bookingAddress" type="text"
										class="form-control bg-light " id="inputAddress"
										placeholder="1234 Main St" />
									<label for="inputAddress" class="form-label">Address</label>
									<form:errors path="bookingAddress" />
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<form:input path="bookingAddress" type="text"
										class="form-control bg-light " id="inputAddress"
										placeholder="1234 Main St" />
									<label for="inputAddress" class="form-label">Note</label>
									<form:errors path="note" />
								</div>
							</div>

							<div class="col-12">
								<div class="form-floating">
									<form:input path="bookingAddress" type="number"
										class="form-control bg-light " id="inputAddress"
										placeholder="033434343" />
									<label for="inputAddress" class="form-label">Phone
										number</label>
									<form:errors path="" />
								</div>
							</div>
							<div class="col-md-4 col-6">
								<label class="mb-2">Phương thức thanh toán</label> <select
									class="form-select border border-secondary"
									style="height: 35px;">
									<option>Tiền mặt</option>
									<option>Chuyển khoản</option>

								</select>
							</div>

							<div class="col-12 text-end">
								<button type="submit"
									class="btn bg-button-submit w-100 bg-gradient p-3 text-center mb-2 text-white fw-bolder fs-3">Xác
									nhận</button>
								<a href="#" class="text-primary shadow-sm">Xác nhận</a>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>


	</main>
	<%@include file="/WEB-INF/views/customer/include/footer.jsp"%>

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- 		Modal -->
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