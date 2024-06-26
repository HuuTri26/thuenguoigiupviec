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

<title>Thêm người giúp việc</title>
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

	<!--       </aside>End Sidebar -->
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Người giúp việc</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.htm">Trang
							chủ</a></li>
					<li class="breadcrumb-item active"><a href="admin/addMaid.htm">Người
							giúp việc</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Thêm người giúp việc</h5>
							<!--   <p>Browser default validation with using the <code>required</code> keyword. Try submitting the form below. Depending on your browser and OS, you’ll see a slightly different style of feedback.</p>
   -->
							<!-- Browser Default Validation -->
							<form:form class="row g-3" action="admin/addMaid.htm"
								modelAttribute="maid" method="post">
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
										tên</label>
									<form:input type="text" class="form-control"
										id="validationDefault01" path="fullName"
										placeholder="Full name" required="required" />
									<form:errors path="fullName" />
								</div>
								<div class="col-md-6">
									<label for="validationDefault02" class="form-label">Số
										điện thoại</label>
									<form:input type="text" class="form-control"
										id="validationDefault02" path="phoneNumber"
										placeholder="Phone number" required="required"/>
									<form:errors path="phoneNumber" />
								</div>
								<div class="col-md-6">
									<label for="validationDefault03" class="form-label">Địa
										chỉ</label>
									<form:input type="text" class="form-control"
										id="validationDefault03" path="address" placeholder="Address" required="required"/>
									<form:errors path="address" />
								</div>
								<div class="col-md-6">
									<label for="validationDefault04" class="form-label">Kinh
										nghiệm</label>
									<form:input type="number" class="form-control"
										id="validationDefault04" path="experience"
										placeholder="Experience" required="required"/>
									<form:errors path="experience" />
								</div>
								<div class="col-md-6">
									<label for="validationDefault05" class="form-label">Lương</label>
									<form:input type="number" class="form-control"
										id="validationDefault05" path="salary" placeholder="Salary" required="required"/>
									<form:errors path="salary" />
								</div>
								<div class="col-md-6">
									<label for="validationDefault06" class="form-label">Email</label>
									<form:input type="text" class="form-control"
										id="validationDefault06" path="account.email"
										placeholder="Email" required="required"/>
									<form:errors path="account.email" />
								</div>
								<div class="col-md-6">
									<label for="validationDefault07" class="form-label">Fulltime/Partime</label>
									<form:select class="form-select" id="validationDefault07"
										path="employmentType">
										<form:option value="0">Fulltime</form:option>
										<form:option value="1">Partime</form:option>
									</form:select>
								</div>
								<div class="col-md-6">
									<label for="validationDefault08" class="form-label">Trạng
										thái làm việc</label>
									<form:select class="form-select" id="validationDefault08"
										path="">
										<form:option value="Available">Rảnh</form:option>
										<form:option value="Busy">Bận</form:option>
									</form:select>
								</div>
								<div class="col-12">
									<button class="btn btn-primary" name="add" type="submit">Submit</button>
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

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Nhóm 16 <strong><span>Phầm mềm </span></strong>. cho thuê giúp
			việc tại nhà.
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