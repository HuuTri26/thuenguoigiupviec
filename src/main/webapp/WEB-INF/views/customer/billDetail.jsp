<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
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

</head>

<body>

	<!-- ======= Header ======= -->
	<%-- 	<%@include file="/WEB-INF/views/customer/include/header.jsp"%> --%>

	<header id="header" class="fixed-top d-flex align-items-center">
		<div class="container d-flex justify-content-between">

			<div class="logo">
				<h1>
					<a href="index.htm">BookMyMaid</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>
			<nav id="navbar" class="navbar">
				<ul>
					<li class="dropdown"><a href="#"><span>Account</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="customerProfile.htm">Trang cá nhân</a></li>
							<li><a href="updateCustomer.htm">Cập nhật thông tin</a></li>
							<li><a href="customerChangePassword.htm">Đổi mật khẩu</a></li>
							<li><a href="bookingManagement.htm">Xem danh sách </a></li>
							<li><a href="contractManagement.htm">Xem danh sách đặt
									dịch vụ</a></li>
							<li><a href="billManagement.htm">Xem danh bill</a></li>
							<li><a href="logout.htm">Log out</a></li>

						</ul></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>

		</div>
	</header>

	<main>
		<div class="pagetitle">
			<h1>Bill</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="contractDetail.htm">Bill</a></li>
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

									<h5 class="card-title">Thông tin bill</h5>

									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Id đặt lịch</div>
										<div class="col-lg-9 col-md-8">1</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Thời gian thanh
											toán</div>
										<div class="col-lg-9 col-md-8">2022-12-26</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Tổng tiền</div>
										<div class="col-lg-9 col-md-8">200$</div>
									</div>

									<div class="text-center">
										<button href="index.htm" class="btn btn-primary">Thoát</button>
									</div>
								</div>

								<!-- 								<div class="tab-pane fade profile-edit pt-3" id="profile-edit"> -->

								<!-- 									Profile Edit Form -->
								<%-- 									<form> --%>
								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="profileImage" -->
								<!-- 												class="col-md-4 col-lg-3 col-form-label">Ảnh</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<img -->
								<%-- 													src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>" --%>
								<!-- 													alt="Profile"> -->
								<!-- 												<div class="pt-2"> -->
								<!-- 													<a href="#" class="btn btn-primary btn-sm" -->
								<!-- 														title="Upload new profile image"><i -->
								<!-- 														class="bi bi-upload"></i></a> <a href="#" -->
								<!-- 														class="btn btn-danger btn-sm" -->
								<!-- 														title="Remove my profile image"><i class="bi bi-trash"></i></a> -->
								<!-- 												</div> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="fullName" -->
								<!-- 												class="col-md-4 col-lg-3 col-form-label">Họ tên</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="name" type="text" class="form-control" -->
								<!-- 													id="fullName" value="Kevin Anderson"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="about" class="col-md-4 col-lg-3 col-form-label">Giới -->
								<!-- 												thiệu</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<textarea name="about" class="form-control" id="about" -->
								<!-- 													style="height: 100px">Hahahahaha</textarea> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="company" class="col-md-4 col-lg-3 col-form-label">UserName</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="userName" type="text" class="form-control" -->
								<!-- 													id="company" value="huutri"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="Job" class="col-md-4 col-lg-3 col-form-label">Giới -->
								<!-- 												tính</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="gender" type="text" class="form-control" -->
								<!-- 													id="Job" value="Nữ"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="Country" class="col-md-4 col-lg-3 col-form-label">Ngày -->
								<!-- 												sinh</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="dob" type="text" class="form-control" -->
								<!-- 													id="Country" value="31/02/2099"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="Address" class="col-md-4 col-lg-3 col-form-label">Địa -->
								<!-- 												chỉ</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="address" type="text" class="form-control" -->
								<!-- 													id="Address" value="97 Man Thiện"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="Phone" class="col-md-4 col-lg-3 col-form-label">Số -->
								<!-- 												điện thoại</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="phone" type="text" class="form-control" -->
								<!-- 													id="Phone" value="(436) 486-3538 x29071"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="email" type="email" class="form-control" -->
								<!-- 													id="Email" value="k.anderson@example.com"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->


								<!-- 										<div class="text-center"> -->
								<!-- 											<button type="submit" class="btn btn-primary">Cập -->
								<!-- 												nhật</button> -->
								<!-- 										</div> -->
								<%-- 									</form> --%>
								<!-- 									End Profile Edit Form -->

								<!-- 								</div> -->

								<!-- 								<div class="tab-pane fade pt-3" id="profile-settings"> -->

								<!-- 									Settings Form -->
								<%-- 									<form> --%>

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="fullName" -->
								<!-- 												class="col-md-4 col-lg-3 col-form-label">Email -->
								<!-- 												Notifications</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<div class="form-check"> -->
								<!-- 													<input class="form-check-input" type="checkbox" -->
								<!-- 														id="changesMade" checked> <label -->
								<!-- 														class="form-check-label" for="changesMade"> -->
								<!-- 														Changes made to your account </label> -->
								<!-- 												</div> -->
								<!-- 												<div class="form-check"> -->
								<!-- 													<input class="form-check-input" type="checkbox" -->
								<!-- 														id="newProducts" checked> <label -->
								<!-- 														class="form-check-label" for="newProducts"> -->
								<!-- 														Information on new products and services </label> -->
								<!-- 												</div> -->
								<!-- 												<div class="form-check"> -->
								<!-- 													<input class="form-check-input" type="checkbox" -->
								<!-- 														id="proOffers"> <label class="form-check-label" -->
								<!-- 														for="proOffers"> Marketing and promo offers </label> -->
								<!-- 												</div> -->
								<!-- 												<div class="form-check"> -->
								<!-- 													<input class="form-check-input" type="checkbox" -->
								<!-- 														id="securityNotify" checked disabled> <label -->
								<!-- 														class="form-check-label" for="securityNotify"> -->
								<!-- 														Security alerts </label> -->
								<!-- 												</div> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="text-center"> -->
								<!-- 											<button type="submit" class="btn btn-primary">Save -->
								<!-- 												Changes</button> -->
								<!-- 										</div> -->
								<%-- 									</form> --%>
								<!-- 									End settings Form -->

								<!-- 								</div> -->

								<!-- 								<div class="tab-pane fade pt-3" id="profile-change-password"> -->
								<!-- 									Change Password Form -->
								<%-- 									<form> --%>

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="currentPassword" -->
								<!-- 												class="col-md-4 col-lg-3 col-form-label">Mật khẩu -->
								<!-- 												hiện tại</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="password" type="password" class="form-control" -->
								<!-- 													id="currentPassword"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="newPassword" -->
								<!-- 												class="col-md-4 col-lg-3 col-form-label">Mật khẩu -->
								<!-- 												mới</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="newpassword" type="password" -->
								<!-- 													class="form-control" id="newPassword"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="row mb-3"> -->
								<!-- 											<label for="renewPassword" -->
								<!-- 												class="col-md-4 col-lg-3 col-form-label">Nhập lại -->
								<!-- 												mật khẩu</label> -->
								<!-- 											<div class="col-md-8 col-lg-9"> -->
								<!-- 												<input name="renewpassword" type="password" -->
								<!-- 													class="form-control" id="renewPassword"> -->
								<!-- 											</div> -->
								<!-- 										</div> -->

								<!-- 										<div class="text-center"> -->
								<!-- 											<button type="submit" class="btn btn-primary">Đổi -->
								<!-- 												mật khẩu</button> -->
								<!-- 										</div> -->
								<%-- 									</form> --%>
								<!-- 									End Change Password Form -->

								<!-- 								</div> -->

								<!-- 							</div> -->
								<!-- End Bordered Tabs -->

							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
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