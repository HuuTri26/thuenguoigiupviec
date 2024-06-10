<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Profile booking</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="<c:url value='/resources/admin/assets/img/EPariksha.png'/>"
	rel="icon">
<link
	href="<c:url value='/resources/admin/assets/img/apple-touch-icon.png'/>"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="<c:url value='/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/admin/assets/vendor/boxicons/css/boxicons.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/admin/assets/vendor/quill/quill.snow.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/admin/assets/vendor/quill/quill.bubble.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/admin/assets/vendor/remixicon/remixicon.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='/resources/admin/assets/vendor/simple-datatables/style.css'/>"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="<c:url value='/resources/admin/assets/css/style.css'/>"
	rel="stylesheet">

</head>

<body>

	<!-- ======= Header ======= -->
	<%@include file="/WEB-INF/views/maid/include/header.jsp"%>

	<!--   </aside>End Sidebar -->

	<%@include file="/WEB-INF/views/maid/include/sidebar.jsp"%>


	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Profile booking</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="maid/index.htm">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="maid/bookingDetail.htm">Profile booking</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">
				<div class="col-xl-4">

					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">

							<img
								src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>"
								alt="Profile" class="rounded-circle">
							<h2>Hữu</h2>
							<h3>huutri</h3>
						</div>
					</div>

				</div>

				<div class="col-xl-8">

					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">

								<li class="nav-item">
									<button class="nav-link active" data-bs-toggle="tab"
										data-bs-target="#profile-overview">Xem thông tin</button>
								</li>

								<!--                   <li class="nav-item"> -->
								<!--                     <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Chỉnh sửa Profile</button> -->
								<!--                   </li> -->

								<!--                   <li class="nav-item"> -->
								<!--                     <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">Settings</button> -->
								<!--                   </li> -->

								<!--                   <li class="nav-item"> -->
								<!--                     <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Đổi mật khẩu</button> -->
								<!--                   </li> -->

							</ul>
							<div class="tab-content pt-2">

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview">
									<h5 class="card-title">Miêu tả</h5>
									<p class="small fst-italic">Hahahahahahaa</p>

									<h5 class="card-title">Thông tin Booking</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Id khách hàng</div>
										<div class="col-lg-9 col-md-8">1</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Tên KH</div>
										<div class="col-lg-9 col-md-8">Hữu Trí</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">SDT KH</div>
										<div class="col-lg-9 col-md-8">09978675</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Tên gói dịch vụ</div>
										<div class="col-lg-9 col-md-8">Dọn nhà 2h</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày bắt đầu</div>
										<div class="col-lg-9 col-md-8">2022-12-26</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày kết thúc</div>
										<div class="col-lg-9 col-md-8">2022-12-27</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
										<div class="col-lg-9 col-md-8">Man thiện</div>
									</div>


									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ghi chú</div>
										<div class="col-lg-9 col-md-8">Cần mang dao chặt cỏ</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Giá</div>
										<div class="col-lg-9 col-md-8">350000</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày tạo</div>
										<div class="col-lg-9 col-md-8">2022-12-26</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Id nhân viên</div>
										<div class="col-lg-9 col-md-8">1</div>
									</div>



									<div class="row">
										<div class="col-lg-3 col-md-4 label">Trạng thái thanh
											toán</div>
										<div class="col-lg-9 col-md-8">Đã thanh toán</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Trạng thái đặt lịch</div>
										<div class="col-lg-9 col-md-8">Đang thực hiện</div>
									</div>
								</div>

								<!-- End Bordered Tabs -->

							</div>
						</div>

					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= 
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>E-Pariksha</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
           Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> 
    </div>
  </footer>End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="<c:url value='/resources/admin/assets/vendor/apexcharts/apexcharts.min.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/chart.js/chart.min.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/echarts/echarts.min.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/quill/quill.min.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/simple-datatables/simple-datatables.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/tinymce/tinymce.min.js'/>"></script>
	<script
		src="<c:url value='/resources/admin/assets/vendor/php-email-form/validate.js'/>"></script>

	<!-- Template Main JS File -->
	<script src="<c:url value='/resources/admin/assets/js/main.js'/>"></script>

</body>

</html>