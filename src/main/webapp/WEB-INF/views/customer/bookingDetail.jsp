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

<title>Profile customer</title>
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

<link
	href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link
	href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js'/>"
	rel="stylesheet">
<link
	href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'/>"
	rel="stylesheet">
<link
	href="<c:url value='https://use.fontawesome.com/releases/v5.7.2/css/all.css'/>"
	rel="stylesheet">
<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap')
	;

/* * { */
/* 	margin: 0; */
/* 	padding: 0; */
/* 	box-sizing: border-box; */
/* 	font-family: 'Montserrat', sans-serif; */
/* } */

/* body { */
/* 	display: flex; */
/* 	justify-content: center; */
/* 	align-items: center; */
/* 	min-height: 100vh; */
/* 	background-color: #0C4160; */
/* 	padding: 30px 10px; */
/* } */
.card-payment {
	max-width: 500px;
	margin: auto;
	color: black;
	border-radius: 20 px;
}

.container-card {
	display: none;
	background-color: white;
	border-radius: 8px;
	padding: 20px;
	width: 400px;
	z-index: 1001;
}

/* p { */
/* 	margin: 0px; */
/* } */
.container-card .h8 {
	font-size: 30px;
	font-weight: 800;
	text-align: center;
}

.btn.btn-primary {
	width: 100%;
	height: 70px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 15px;
	background-image: linear-gradient(to right, #77A1D3 0%, #79CBCA 51%, #77A1D3 100%);
	border: none;
	transition: 0.5s;
	background-size: 200% auto;
}

.btn.btn.btn-primary:hover {
	background-position: right center;
	color: #fff;
	text-decoration: none;
}

.btn.btn-primary:hover .fas.fa-arrow-right {
	transform: translate(15px);
	transition: transform 0.2s ease-in;
}

.form-control {
	color: white;
	background-color: #223C60;
	border: 2px solid transparent;
	height: 60px;
	padding-left: 20px;
	vertical-align: middle;
}

.form-control:focus {
	color: white;
	background-color: #0C4160;
	border: 2px solid #2d4dda;
	box-shadow: none;
}

.text {
	font-size: 14px;
	font-weight: 600;
}

::placeholder {
	font-size: 14px;
	font-weight: 600;
}

.overlay {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	justify-content: center;
	align-items: center;
	z-index: 1000;
}

/* css số sao */
.rate {
	float: left;
	height: 46px;
	padding: 0 10px;
}

.rate:not(:checked)>input {
	position: absolute;
	top: -9999px;
}

.rate:not(:checked)>label {
	float: right;
	width: 1em;
	overflow: hidden;
	white-space: nowrap;
	cursor: pointer;
	font-size: 30px;
	color: #ccc;
}

.rate:not(:checked)>label:before {
	content: '★ ';
}

.rate>input:checked ~ label {
	color: #ffc700;
}

.rate:not(:checked)>label:hover, .rate:not(:checked)>label:hover ~ label
	{
	color: #deb217;
}

.rate>input:checked+label:hover, .rate>input:checked+label:hover ~ label,
	.rate>input:checked ~ label:hover, .rate>input:checked ~ label:hover ~
	label, .rate>label:hover ~ input:checked ~ label {
	color: #c59b08;
}
</style>
</head>

<body>

	<!-- ======= Header ======= -->
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
					<li class="dropdown"><a href="customer/index.htm"><span>Tài
								khoản</span> <i class="bi bi-chevron-down"></i></a>
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

	<main>
		<div class="pagetitle">
			<h1>Profile booking</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="customer/index.html">Trang
							chủ</a></li>
					<li class="breadcrumb-item active"><a
						href="customer/bookingDetail.htm">Profile booking</a></li>
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
										data-bs-target="#profile-overview">Danh sách người
										giúp việc được phân công</button>
								</li>

							</ul>
							<div class="tab-content pt-2">

								<table class="table datatable ">
									<thead class="thead-fixed"
										style="background-color: #37517e; color: white">
										<tr>

											<th scope="col-1">Id</th>
											<th scope="col-2">Họ tên</th>
											<th scope="col-1">Số điện thoại</th>

											<th scope="col-3">Địa chỉ</th>
											<th scope="col-1">Full/Partime</th>
											<th scope="col-1"></th>

										</tr>
									</thead>
									<tbody id="table_maids">

										<c:forEach var="maid" items="${bookingMaids}">
											<tr>
												<td scope="row">${maid.id }</td>
												<td scope="col-2">${maid.fullName }</td>
												<td scope="col-2">${maid.phoneNumber }</td>
												<td scope="col-3">${maid.account.email }</td>
												<td scope="col-1">${maid.employmentType ? 'Full-time':'Part-time' }</td>
												<!-- <td scope="col-1">Part-time</td> -->
											</tr>
										</c:forEach>

									</tbody>
								</table>

								<div class="tab-pane fade show active profile-overview"
									id="profile-overview">
									<!-- 			<h5 class="card-title">Miêu tả</h5>
									<p class="small fst-italic">Hahahahahahaa</p> -->

									<h5 class="card-title">Thông tin Booking</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Tên khách hàng</div>
										<div class="col-lg-9 col-md-8">${booking.customer.fullName }</div>
									</div>
									<!-- 	<div class="row">
										<div class="col-lg-3 col-md-4 label ">Id người giúp việc</div>
										<div class="col-lg-9 col-md-8">1</div>
									</div> -->
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Tên gói dịch vụ</div>
										<div class="col-lg-9 col-md-8">${booking.service.name }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày bắt đầu</div>
										<div class="col-lg-9 col-md-8">${booking.startTime }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
										<div class="col-lg-9 col-md-8">${booking.bookingAddress }</div>
									</div>


									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ghi chú</div>
										<div class="col-lg-9 col-md-8">${booking.note }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Giá</div>
										<div class="col-lg-9 col-md-8">${booking.service.servicePrices[0].price }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày tạo</div>
										<div class="col-lg-9 col-md-8">${booking.createAt }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Nhân viên tiếp
											nhận</div>
										<div class="col-lg-9 col-md-8">${booking.employee.fullName }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Trạng thái thanh
											toán</div>
										<div class="col-lg-9 col-md-8">${booking.paymentStatus == 1 ? 'Đã thanh toán' : 'Chưa thanh toán' }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Trạng thái đặt lịch</div>
										<div class="col-lg-9 col-md-8">
											<c:choose>
												<c:when test="${booking.bookingStatus == 0}">
                    									Đã hủy
                									</c:when>
												<c:when test="${booking.bookingStatus == 1}">
                    									Chờ xác nhận
                									</c:when>
												<c:when test="${booking.bookingStatus == 2}">
                										Đã xác nhận
                									</c:when>
												<c:otherwise>
                    									Hoàn thành
                									</c:otherwise>
											</c:choose>
										</div>
									</div>

									<button type="submit" style="background-color: orange;" ${booking.paymentStatus == 0 ? '' : 'hidden' }
										class="btn bg-button-submit  p-2 text-center mb-2 text-white fw-bolder fs-3"
										onclick="showPaymentForm()">Xác nhận thanh toán</button>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<form:form class="overlay" id="overlay"
			onclick="hidePaymentForm(event)"
			action="customer/checkoutBooking/${booking.id}.htm" method="post"
			modelAttribute="bookingDetail">

			<div class="container-card p-0" id="paymentForm">
				<div class="card-payment px-4">
					<p class="h8 py-3">Thanh toán đơn hàng</p>
					<div class="row gx-3">
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Tên gói</p>
								<input readonly="readonly" class="form-control mb-3" type="text"
									placeholder="Name" value="${booking.service.name }">
							</div>
						</div>
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Giá gói</p>
								<input readonly="readonly" class="form-control mb-3" type="text"
									placeholder="Name"
									value="${booking.service.servicePrices[0].price }">
							</div>
						</div>
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Feedback</p>
								<form:textarea path="feedback" class="form-control mb-3"
									placeholder="Name" />
							</div>
						</div>
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Đánh giá(Rating)</p>
								<div class="rate">
									<input type="radio" id="star5" name="rate" value=5 /> <label
										for="star5" title="text">5 stars</label> <input type="radio"
										id="star4" name="rate" value=4 /> <label for="star4"
										title="text">4 stars</label> <input type="radio" id="star3"
										name="rate" value=3 /> <label for="star3" title="text">3
										stars</label> <input type="radio" id="star2" name="rate" value=2 />
									<label for="star2" title="text">2 stars</label> <input
										type="radio" id="star1" name="rate" value=1 /> <label
										for="star1" title="text">1 star</label>
								</div>
							</div>
						</div>
						<div class="col-12">
							<!-- 	<div class="btn btn-primary mb-3">
								<span class="ps-3">Thanh toán</span> <span
									class="fas fa-arrow-right"></span>
							</div> -->
							<button class="btn btn-primary mb-3" type="submit">
								<span class="ps-3">Thanh toán</span> <span
									class="fas fa-arrow-right"></span>
							</button>

						</div>
					</div>
				</div>
			</div>

		</form:form>
		<%-- <div class="overlay" id="overlay" onclick="hidePaymentForm(event)">
			<div class="container-card p-0" id="paymentForm">
				<div class="card-payment px-4">
					<p class="h8 py-3">Thanh toán đơn hàng</p>
					<div class="row gx-3">
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Tên gói</p>
								<input readonly="readonly" class="form-control mb-3" type="text" placeholder="Name"
									value="${booking.service.name }">
							</div>
						</div>
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Giá gói</p>
								<input readonly="readonly" class="form-control mb-3" type="text" placeholder="Name"
									value="${booking.service.servicePrices[0].price }">
							</div>
						</div>
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Feedback</p>
								<textarea name="feedback" class="form-control mb-3" placeholder="Name"></textarea>
							</div>
						</div>
						<div class="col-12">
							<div class="d-flex flex-column">
								<p class="text mb-1">Đánh giá(Rating)</p>
								<div class="rate">
									<input type="radio" id="star5" name="rate" value="5" /> <label
										for="star5" title="text">5 stars</label> <input type="radio"
										id="star4" name="rate" value="4" /> <label for="star4"
										title="text">4 stars</label> <input type="radio" id="star3"
										name="rate" value="3" /> <label for="star3" title="text">3
										stars</label> <input type="radio" id="star2" name="rate" value="2" />
									<label for="star2" title="text">2 stars</label> <input
										type="radio" id="star1" name="rate" value="1" /> <label
										for="star1" title="text">1 star</label>
								</div>
							</div>
						</div>
						<div class="col-12">
							<div class="btn btn-primary mb-3">
								<a href="customer/checkoutBooking/${booking.id}.htm" class="ps-3">Thanh toán</a> <span
									class="fas fa-arrow-right"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> --%>
	</main>
	<!-- End #main -->
	<%@include file="/WEB-INF/views/customer/include/footer.jsp"%>
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
	<script>
        function showPaymentForm() {
            document.getElementById('overlay').style.display = 'flex';
            document.getElementById('paymentForm').style.display = 'block';
        }

        function hidePaymentForm(event) {
            if (event.target.id === 'overlay') {
                document.getElementById('overlay').style.display = 'none';
                document.getElementById('paymentForm').style.display = 'none';
            }
        }
    </script>
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
	<script>
	const switchElements = document.querySelectorAll('.form-check.form-switch');

	switchElements.forEach(switchElement => {
	  const checkbox = switchElement.querySelector('input[type="checkbox"]');
	  const statusSpan = switchElement.querySelector('.switch-status');
	  const switchText = switchElement.dataset.switchText.split(','); // Split text options

	  checkbox.addEventListener('change', function() {
	    statusSpan.textContent = switchText[this.checked ? 1 : 0];
	  });
	});
	</script>

</body>

</html>