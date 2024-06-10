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

<title>Cập nhật admin</title>
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

	<!--         <div class="d-flex align-items-center justify-content-between"> -->
	<!--             <i class="bi bi-list toggle-sidebar-btn"></i> -->
	<!--             <a href="index.html" class="logo d-flex align-items-center"> -->
	<%--                 <img src="<c:url value='/resources/admin/assets/img/EPariksha.png'/>" alt=""> --%>
	<!--                 <span class="d-none d-lg-block">E-Pariksha</span> -->
	<!--             </a> -->

	<!--         </div>End Logo -->


	<!--         <nav class="header-nav ms-auto"> -->
	<!--             <ul class="d-flex align-items-center"> -->



	<!--                 <li class="nav-item dropdown pe-3"> -->

	<!--                     <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> -->
	<%--                         <img src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>" alt="Profile" class="rounded-circle"> --%>
	<!--                         <span class="d-none d-md-block dropdown-toggle ps-2">Sumit</span> -->
	<!--                     </a>End Profile Iamge Icon -->

	<!--                     <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"> -->
	<!--                         <li class="dropdown-header"> -->
	<!--                             <h6>Sumit</h6> -->
	<!--                             <span>Web Designer</span> -->
	<!--                         </li> -->
	<!--                         <li> -->
	<!--                             <hr class="dropdown-divider"> -->
	<!--                         </li> -->

	<!--                         <li> -->
	<!--                             <a class="dropdown-item d-flex align-items-center" href="user-profile.html"> -->
	<!--                                 <i class="bi bi-person"></i> -->
	<!--                                 <span>My Profile</span> -->
	<!--                             </a> -->
	<!--                         </li> -->
	<!--                         <li> -->
	<!--                             <hr class="dropdown-divider"> -->
	<!--                         </li> -->

	<!--                         <li> -->
	<!--                             <a class="dropdown-item d-flex align-items-center" href="#"> -->
	<!--                                 <i class="bi bi-box-arrow-right"></i> -->
	<!--                                 <span>Sign Out</span> -->
	<!--                             </a> -->
	<!--                         </li> -->

	<!--                     </ul>End Profile Dropdown Items -->
	<!--                 </li>End Profile Nav -->

	<!--             </ul> -->
	<!--         </nav>End Icons Navigation -->

	<!--     </header>End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>
	<!--     <aside id="sidebar" class="sidebar"> -->

	<!--         <ul class="sidebar-nav" id="sidebar-nav"> -->

	<!--           <li class="nav-item"> -->
	<!--             <a class="nav-link collapsed" href="index.html"> -->
	<!--               <i class="bi bi-grid"></i> -->
	<!--               <span>Dashboard</span> -->
	<!--             </a> -->
	<!--           </li>End Dashboard Nav -->

	<!--           <li class="nav-item"> -->
	<!--             <a class="nav-link collapsed" href="student.html"> -->
	<!--               <i class="bi bi-person"></i> -->
	<!--               <span>admin</span> -->
	<!--             </a> -->
	<!--           </li>End admin Page Nav -->

	<!--           <li class="nav-item"> -->
	<!--             <a class="nav-link collapsed" href="teacher.html"> -->
	<!--               <i class="bi bi-question-circle"></i> -->
	<!--               <span>User</span> -->
	<!--             </a> -->
	<!--           </li>End User Page Nav -->

	<!--           <li class="nav-item"> -->
	<!--             <a class="nav-link collapsed" href="subject.html"> -->
	<!--               <i class="bi bi-envelope"></i> -->
	<!--               <span>admins</span> -->
	<!--             </a> -->
	<!--           </li>End Subject Page Nav -->

	<!--           <li class="nav-item"> -->
	<!--             <a class="nav-link collapsed" href="examhistory.html"> -->
	<!--               <i class="bi bi-box-arrow-in-right"></i> -->
	<!--               <span>Booking Details</span> -->
	<!--             </a> -->
	<!--           </li>End Exam History Page Nav -->


	<!--         </ul> -->

	<!--       </aside>End Sidebar -->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>admin</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.htm">Home</a></li>
					<li class="breadcrumb-item active"><a href="admin/adminEditProfile.htm">admin-edit-profile</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Cập nhật admin</h5>
							<!--   <p>Browser default validation with using the <code>required</code> keyword. Try submitting the form below. Depending on your browser and OS, you’ll see a slightly different style of feedback.</p>
   -->
							<!-- Browser Default Validation -->

							<form:form class="row g-3" action="admin/adminEditProfile.htm"
								method="post" modelAttribute="employeeInfo">

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

								<%-- <div class="col-md-6">
									<label for="validationDefault01" class="form-label">Id</label>
									<form:input type="text" class="form-control"
										id="validationDefault01"
										value="${empEditContent.id }" path="id"
										readonly="true" />
								</div> --%>

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Họ
										tên</label>
									<form:input path="fullName" class="form-control"
										id="validationDefault01" value="${empEditContent.fullName }"
										placeholder="Họ và tên mới" />
									<form:errors path="fullName" />
								</div>

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Số
										điện thoại</label>
									<form:input type="text" class="form-control"
										id="validationDefault01"
										value="${empEditContent.phoneNumber }" path="phoneNumber"
										placeholder="Số điện thoại mới" />
									<form:errors path="phoneNumber" />
								</div>

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Địa
										chỉ</label>
									<form:input type="text" class="form-control"
										id="validationDefault01" value="${empEditContent.address }"
										path="address" placeholder="Địa chỉ mới" />
									<form:errors path="address" />
								</div>

								<div class="col-md-6">
									<label for="validationDefault01" class="form-label">Email</label>
									<form:input type="text" class="form-control"
										id="validationDefault01"
										value="${empEditContent.account.email }" path="account.email"
										readonly="true" />
								</div>

								<div class="col-12">
									<button class="btn btn-primary" type="submit">Update</button>
								</div>
							</form:form>

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