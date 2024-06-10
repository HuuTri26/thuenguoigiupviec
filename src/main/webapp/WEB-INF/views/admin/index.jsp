<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin</title>
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
	<!-- 	</header> -->
	<!-- 	<!-- End Header -->
	-->
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>

	<!-- ======= Sidebar ======= -->

	<!-- 	</aside> -->
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>
	<!-- End Sidebar-->


	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Trang chủ</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.htm">Home</a></li>
					<li class="breadcrumb-item active">Trang chủ</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Trang chủ</h5>

							<section class="section" style="text-align: center;">
								<div class="row">
									<div class="container">

										<div class="row-lg-3">

											<!-- Card with an image on top -->
											<div class="card"
												style="width: 20%; float: left; padding: 15px; margin-left: 2%; margin-right: 5%;">

												<img
													src="<c:url value='/resources/admin/assets/img/kindpng_343936.png'/>"
													class="mx-auto d-block" height="30%" width="30%"
													style="text-align: center;">

												<div class="card-body" style="align-items: center;">
													<h5 class="card-title" style="text-align: center;">Số
														lượng người giúp việc</h5>
													<h5 class="card-text" style="text-align: center;">100</h5>
												</div>

											</div>
											<!-- End Card with an image on top -->
										</div>

										<div class="row-lg-3">

											<!-- Card with an image on top -->
											<div class="card"
												style="width: 20%; float: left; padding: 15px; margin-right: 5%;">
												<img
													src="<c:url value='/resources/admin/assets/img/Teacher-PNG-images-Teach-Teachers-67png.png'/>"
													class="mx-auto d-block" height="30%" width="30%"
													style="text-align: center;">
												<div class="card-body" style="align-items: center;">
													<h5 class="card-title" style="text-align: center;">Số
														lượng khách hàng</h5>
													<h5 class="card-text" style="text-align: center;">10</h5>
												</div>
											</div>
											<!-- End Card with an image on top -->
										</div>


										<div class="row-lg-3">

											<!-- Card with an image on top -->
											<div class="card"
												style="width: 20%; float: left; padding: 15px; margin-right: 5%;">
												<img
													src="<c:url value='/resources/admin/assets/img/kisspng-apple-books-macos-computer-icons-os-x-mavericks-ma-5cc059c70ecfa4.5202859715561097670607.png'/>"
													class="mx-auto d-block" height="30%" width="30%"
													style="text-align: center;">
												<div class="card-body" style="align-items: center;">
													<h5 class="card-title" style="text-align: center;">Số
														lượng Hợp Đồng</h5>
													<h5 class="card-text" style="text-align: center;">10</h5>
												</div>
											</div>
											<!-- End Card with an image on top -->
										</div>

										<div class="row-lg-3">

											<!-- Card with an image on top -->
											<div class="card"
												style="width: 20%; float: left; padding: 15px;">
												<img
													src="<c:url value='/resources/admin/assets/img/kindpng_2423250.png'/>"
													class="mx-auto d-block" height="25%" width="30%"
													style="text-align: center;">
												<div class="card-body" style="align-items: center;">
													<h5 class="card-title" style="text-align: center;">Số
														lượng đơn đặt dịch vụ</h5>
													<h5 class="card-text" style="text-align: center;">5</h5>
												</div>
											</div>
											<!-- End Card with an image on top -->
										</div>

									</div>
								</div>

								<section>
									<div class="row">

										<div class="col-lg-6">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Biểu đồ khách hàng đăng ký</h5>

													<!-- Line Chart -->
													<canvas id="lineChart" style="max-height: 400px;"></canvas>
													<script>
                      document.addEventListener("DOMContentLoaded", () => {
                        new Chart(document.querySelector('#lineChart'), {
                          type: 'line',
                          data: {
                            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                            datasets: [{
                              label: 'Customers Joined',
                              data: [65, 59, 80, 81, 56, 55, 40],
                              fill: false,
                              borderColor: 'rgb(75, 192, 192)',
                              tension: 0.1
                            }]
                          },
                          options: {
                            scales: {
                              y: {
                                beginAtZero: true
                              }
                            }
                          }
                        });
                      });
                    </script>
													<!-- End Line CHart -->

												</div>
											</div>
										</div>

										<div class="col-lg-6">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Trạng thái đơn đặt lịch</h5>

													<!-- Doughnut Chart -->
													<canvas id="doughnutChart" style="max-height: 365px;"></canvas>
													<script>
                      document.addEventListener("DOMContentLoaded", () => {
                        new Chart(document.querySelector('#doughnutChart'), {
                          type: 'doughnut',
                          data: {
                            labels: [
                              'Completed',
                              'Ongoing',
                              'Pending'
                            ],
                            datasets: [{
                              label: 'My First Dataset',
                              data: [300, 50, 100],
                              backgroundColor: [
                                'rgb(255, 99, 132)',
                                'rgb(54, 162, 235)',
                                'rgb(255, 205, 86)'
                              ],
                              hoverOffset: 4
                            }]
                          }
                        });
                      });
                    </script>
													<!-- End Doughnut CHart -->

												</div>
											</div>
										</div>
								</section>
						</div>
					</div>
		</section>



	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= 
  <footer id="footer" class="footer" style="margin-left:0px;">
    <div class="copyright">
      &copy; Copyright <strong><span>E-Pariksha</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
         Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer> End Footer -->

	<a href="admin/index.htm#main"
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