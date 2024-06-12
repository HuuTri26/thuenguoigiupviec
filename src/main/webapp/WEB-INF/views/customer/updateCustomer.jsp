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
					<li class="dropdown"><a href="#"><span>Tài khoản</span> <i
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


	<main>
		<div class="pagetitle">
			<h1>customer</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="customer/index.htm">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="customer/customerManagement.htm">customer</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Cập nhật customer</h5>
							<!--   <p>Browser default validation with using the <code>required</code> keyword. Try submitting the form below. Depending on your browser and OS, you’ll see a slightly different style of feedback.</p>
   -->
							<!-- Browser Default Validation -->

							<form:form class="row g-3" action="customer/updateInfo.htm"
								method="post" modelAttribute="customerInfo">
								<!-- <div class="col-md-6">
                                    <label for="validationDefault01" class="form-label">ID</label>
                                    <input type="hidden" class="form-control" id="validationDefault01" value="id" name="id" placeholder="Id"
                                        required>
                                </div> -->
								<div class="row mb-3">
									<label for="profileImage"
										class="col-md-4 col-lg-3 col-form-label">Ảnh</label>
									<div class="col-md-8 col-lg-9">
										<img
											src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>"
											alt="Profile" style="max-width: 120px;">
										<div class="pt-2">
											<a href="#" class="btn btn-primary btn-sm"
												title="Upload new profile image"><i class="bi bi-upload"></i></a>
											<a href="#" class="btn btn-danger btn-sm"
												title="Remove my profile image"><i class="bi bi-trash"></i></a>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Họ
										tên</label> <form:input path="fullName" type="text" class="form-control"
										id="validationDefault01" value="${cusEditContent.fullName }" name="name"
										placeholder="Subject name" />
										<form:errors path="fullName"/>
								</div>

								<!-- 								<div class="col-md-6"> -->
								<!-- 									<label for="validationDefault04" class="form-label">Loại -->
								<!-- 									</label> <select class="form-select" id="validationDefault04" -->
								<!-- 										name="category" required> -->
								<!-- 										<option selected value="">Dọn dẹp</option> -->
								<!-- 										<option>Nấu ăn</option> -->
								<!-- 										<option>Chăm trẻ</option> -->
								<!-- 										<option>Chăm sóc người bệnh</option> -->
								<!-- 									</select> -->
								<!-- 								</div> -->

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Số
										điện thoại</label> <form:input path="phoneNumber" type="number" class="form-control"
										id="validationDefault01" value="${cusEditContent.phoneNumber }" name="price"
										placeholder="Subject name" />
										<form:errors path="phoneNumber"/>
								</div>

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Địa
										chỉ</label> <form:input path="address" type="text" class="form-control"
										id="validationDefault01" value="${cusEditContent.address }" name="time"
										placeholder="Subject name" />
										<form:errors path="address"/>
								</div>

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Email</label>
									<form:input path="account.email" type="email" class="form-control"
										id="validationDefault01" value="${cusEditContent.account.email }" name="email"
										placeholder="Subject name" readonly="true" />
										<form:errors path="account.email"/>
								</div>

								<!-- <div class="col-md-6">
                                    <label class="form-label">Description</label>
                                    <textarea  class="form-control" name="last_name" style="height:100px"
                                        required>
                                        </textarea>
                                </div> -->

								<!-- 								<div class="col-md-6"> -->
								<!-- 									<label for="validationDefault01" class="form-label">Miêu -->
								<!-- 										tả</label> -->
								<!-- 									<textarea class="form-control" style="height: 100px"></textarea> -->
								<!-- 								</div> -->

								<!-- <div class="col-md-6">
                                    <label for="validationDefault04" class="form-label">Subject</label>
                                    <select class="form-select" multiple  id="validationDefault04" required>
                                        <option selected disabled  value="">Mutiple Select</option>
                                        <option>OS</option>
                                        <option>Java</option>
                                        <option>WPT</option>
                                        <option>DS</option>
                                    </select>
                                </div> -->

								<div class="col-12">
									<button class="btn btn-primary" type="submit">Update</button>
								</div>
							</form:form>
							<!-- End Browser Default Validation -->

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

</body>

</html>