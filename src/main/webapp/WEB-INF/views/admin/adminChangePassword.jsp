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

<title>Đổi mật khẩu admin</title>
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
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>
	<!--     <header id="header" class="header fixed-top d-flex align-items-center"> -->


	<!--     </header>End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>
	<!--     <aside id="sidebar" class="sidebar"> -->


	<!--       </aside>End Sidebar -->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>admin</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.htm">Trang chủ</a></li>
					<li class="breadcrumb-item active"><a
						href="admin/adminChangePassword.htm">Đổi mật khẩu</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">


				<div class="col-xl-8">

					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-change-password">Đổi mật
										khẩu</button>
								</li>
							</ul>
							<div class="tab-content pt-2">

								<form:form class="adminInfo" modelAttribute="employeeInfo"
									method="get">

									<div class="col-xl-4">

										<div class="card">
											<div
												class="card-body profile-card pt-4 d-flex flex-column align-items-center">

												<img
													src="<c:url value='/resources/admin/assets/img/${employee.image }'/>"
													alt="Profile" class="rounded-circle">
												<h2>${employee.fullName }</h2>
												<h3>Admin</h3>
												<!-- <div class="social-links mt-2">
                  <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                  <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                  <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                  <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                </div> -->
											</div>
										</div>
									</div>
								</form:form>
							</div>


							<div>
								<!-- Change Password Form -->
								<form:form action="admin/adminChangePassword.htm" method="post"
									modelAttribute="adminPass">

									<div class="row mb-3">
										<label for="currentPassword"
											class="col-md-4 col-lg-3 col-form-label">Mật khẩu
											hiện tại</label>
										<div class="col-md-8 col-lg-9">
											<form:input path="password" type="password"
												class="form-control" id="currentPassword" />
											<form:errors path="password" />
										</div>
									</div>

									<div class="row mb-3">
										<label for="newPassword"
											class="col-md-4 col-lg-3 col-form-label">Mật khẩu mới</label>
										<div class="col-md-8 col-lg-9">
											<input name="new-password" type="password"
												class="form-control" id="newPassword">
											<form:errors path="password" />
										</div>
									</div>
									<div class="row mb-3">
										<label for="renewPassword"
											class="col-md-4 col-lg-3 col-form-label">Nhập lại mật
											khẩu</label>
										<div class="col-md-8 col-lg-9">
											<input name="re-enter-new-password" type="password"
												class="form-control" id="renewPassword">
											<form:errors path="password" />
										</div>
									</div>

									<div class="text-center">
										<button type="submit" class="btn btn-primary">Đổi mật
											khẩu</button>
									</div>
								</form:form>
								<!-- End Change Password Form -->

							</div>

						</div>
						<!-- End Bordered Tabs -->

					</div>
				</div>

			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Đồ án <strong><span>Nhóm 16 </span></strong>admin Hiring
		</div>
		<div class="credits">
			<!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
		</div>
	</footer>
	<!-- End Footer -->

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