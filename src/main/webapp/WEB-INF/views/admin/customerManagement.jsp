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

<title>Customer Management</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link
	href="<c:url value='/resources/admin/assets/img/EPariksha.png" rel="icon'/>">
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
	<!--   <header id="header" class="header fixed-top d-flex align-items-center"> -->

	<!--     <div class="d-flex align-items-center justify-content-between"> -->
	<!--       <i class="bi bi-list toggle-sidebar-btn"></i> -->
	<!--       <a href="index.html" class="logo d-flex align-items-center"> -->
	<!--         <img src="assets/img/EPariksha.png" alt=""> -->
	<!--         <span class="d-none d-lg-block">BookMyMaid</span> -->
	<!--       </a> -->

	<!--     </div>End Logo -->


	<!--     <nav class="header-nav ms-auto"> -->
	<!--       <ul class="d-flex align-items-center"> -->



	<!--         <li class="nav-item dropdown pe-3"> -->

	<!--           <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> -->
	<%--             <img src="<c:url value='/resources/admin/assets/img/profile-img.jpg" alt="Profile'/>" class="rounded-circle"> --%>
	<!--             <span class="d-none d-md-block dropdown-toggle ps-2">Profile</span> -->
	<!--           </a>End Profile Iamge Icon -->

	<!--           <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"> -->
	<!--             <li class="dropdown-header"> -->
	<!--               <h6>User</h6> -->
	<!--               <span>Web Designer</span> -->
	<!--             </li> -->
	<!--             <li> -->
	<!--               <hr class="dropdown-divider"> -->
	<!--             </li> -->

	<!--             <li> -->
	<!--               <a class="dropdown-item d-flex align-items-center" href="user-profile.html"> -->
	<!--                 <i class="bi bi-person"></i> -->
	<!--                 <span>My Profile</span> -->
	<!--               </a> -->
	<!--             </li> -->
	<!--             <li> -->
	<!--               <hr class="dropdown-divider"> -->
	<!--             </li> -->

	<!--             <li> -->
	<!--               <a class="dropdown-item d-flex align-items-center" href="#"> -->
	<!--                 <i class="bi bi-box-arrow-right"></i> -->
	<!--                 <span>Sign Out</span> -->
	<!--               </a> -->
	<!--             </li> -->

	<!--           </ul>End Profile Dropdown Items -->
	<!--         </li>End Profile Nav -->

	<!--       </ul> -->
	<!--     </nav>End Icons Navigation -->

	<!--   </header>End Header -->

	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>

	<!-- ======= Sidebar ======= -->
	<!--   <aside id="sidebar" class="sidebar"> -->

	<!--     <ul class="sidebar-nav" id="sidebar-nav"> -->

	<!--       <li class="nav-item"> -->
	<!--         <a class="nav-link collapsed" href="dashboard.htm"> -->
	<!--           <i class="bi bi-grid"></i> -->
	<!--           <span>Dashboard</span> -->
	<!--         </a> -->
	<!--       </li>End Dashboard Nav -->

	<!--       <li class="nav-item"> -->
	<!--         <a class="nav-link collapsed" href="maidManagement.htm"> -->
	<!--           <i class="bi bi-person"></i> -->
	<!--           <span>Maid</span> -->
	<!--         </a> -->
	<!--       </li>End Maid Page Nav -->

	<!--       <li class="nav-item"> -->
	<!--         <a class="nav-link collapsed" href="#"> -->
	<!--           <i class="bi bi-question-circle"></i> -->
	<!--           <span>User</span> -->
	<!--         </a> -->
	<!--       </li>End User Page Nav -->

	<!--       <li class="nav-item"> -->
	<!--         <a class="nav-link collapsed" href="serviceManagement.htm"> -->
	<!--           <i class="bi bi-envelope"></i> -->
	<!--           <span>Services</span> -->
	<!--         </a> -->
	<!--       </li>End Subject Page Nav -->

	<!--       <li class="nav-item"> -->
	<!--         <a class="nav-link collapsed" href="bookingManagement.htm"> -->
	<!--           <i class="bi bi-box-arrow-in-right"></i> -->
	<!--           <span>Booking Details</span> -->
	<!--         </a> -->
	<!--       </li>End Exam History Page Nav -->


	<!--     </ul> -->

	<!--   </aside>End Sidebar -->

	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Khách Hàng</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="customerManagement.html">Customer</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<div class="card-title">
								<!--                 <a href="add_teacher.html" class="btn btn-primary">Thêm khách hàng</a> -->
							</div>
							<!--   <p>Add lightweight datatables to your project with using the <a href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">Simple DataTables</a> library. Just add <code>.datatable</code> class name to any table you wish to conver to a datatable</p>
 -->
							<!-- Table with stripped rows -->
							<table class="table datatable ">
								<thead style="background-color: #37517e; color: white">
									<tr>
										<th scope="col">Id</th>
										<th scope="col">Họ tên</th>
										<th scope="col">Số điện thoại</th>
										<th scope="col">Địa chỉ</th>
										<th scope="col">Email</th>
										<th scope="col">Trạng thái tài khoản</th>


									</tr>
								</thead>
								<tbody>
									<tr>
										<td scope="row">1</td>
										<td scope="col">Hữu Trí</td>
										<td scope="col">089848748</td>
										<td scope="col">92 Man Thiện</td>
										<td scope="col">customer1@gmail.com</td>
										<td scope="col">
											<div class="form-check form-switch"
												data-switch-text="Bị chặn,Hoạt động">
												<input class="form-check-input" type="checkbox"
													role="switch"> <label class="form-check-label"
													for="{checkboxId}"> <span class="switch-status">Bị chặn</span>
												</label>
											</div>
										</td>
										<td scope="col"><a href="customerDetail.htm"
											class="btn btn-primary "><i class="bi bi-eye"></i></a><a
											href="customerDetail.htm" class="btn btn-danger"><i
												class="bi-trash"></i></a></td>
									</tr>

								</tbody>
							</table>
							<!-- End Table with stripped rows -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<!--  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>E-Pariksha</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer> -->
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