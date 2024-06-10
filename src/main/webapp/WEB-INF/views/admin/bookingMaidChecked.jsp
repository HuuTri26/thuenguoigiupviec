<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Manage Maid</title>
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

<!-- 	Phân trang -->
<!-- Thêm các file CSS và JS của DataTables -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

</head>

<body>
	<!-- 	<!-- End Header -->
	-->
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>


	<!-- 	</aside> -->
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>
	<!-- End Sidebar-->

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Maid Management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.htm">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="admin/maidManagement.htm"> maid được phân công</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section" style="max-width: 100%;">
			<div class="row">
				<div class="col-lg-24">

					<div class="card">
						<div class="card-body ">
							<table class="table datatable ">
								<thead style="background-color: #37517e; color: white">
									<tr>

										<th scope="col">Id</th>
										<th scope="col">Họ tên</th>
										<th scope="col">Số điện thoại</th>
										<!-- 									<th scope="col">Giới tính</th> -->
										<!-- 									<th scope="col">Ngày sinh</th> -->
										<th scope="col">Địa chỉ</th>
										<th scope="col">Kinh nghiệm</th>
										<th scope="col">Lương</th>
										<th scope="col">Full/Partime</th>
										<th scope="col">Id nhân viên</th>
										<th scope="col">Email</th>
										<th scope="col">Trạng thái làm việc</th>
										<th scope="col">Trạng thái tài khoản</th>
									</tr>
								</thead>
								<tbody id="table_maids">


									<tr>

										<td scope="row">${maid.id }</td>
										<td scope="col">${maid.fullName }</td>
										<!-- 										<td scope="col">huutri</td> -->
										<!-- 										<td scope="col">Nam</td> -->
										<!-- 										<td scope="col">28/9/2078</td> -->
										<td scope="col">${maid.phoneNumber }</td>
										<td scope="col">${maid.address }</td>
										<td scope="col">${maid.experience }</td>
										<td scope="col">${maid.salary }</td>
										<td scope="col">${maid.employmentType ? 'Fulltime' : 'Partime'}</td>
										<td scope="col">${maid.employee.id }</td>
										<td scope="col">${maid.account.email }</td>
										<td scope="col">
											<div class="form-check form-switch"
												data-switch-text="Rảnh,Đang làm việc">
												<input class="form-check-input" type="checkbox"
													role="switch" disabled="disabled"> <label
													class="form-check-label" for="{checkboxId}"> <span
													class="switch-status">Rảnh</span>
												</label>
											</div>
										</td>

										<td scope="col">
											<div class="form-check form-switch"
												data-switch-text="Bị chặn,Hoạt động">
												<input class="form-check-input" type="checkbox"
													role="switch" id="statusSwitch"
													${maid.account.status ? 'checked' : ''} disabled="disabled">
												<label class="form-check-label" for="statusSwitch">
													<span class="switch-status">${maid.account.status ? 'Hoạt động' : 'Bị chặn'}</span>
												</label>
											</div>
										</td>

										<!-- 										<td scope="col"><a href="maidDetail.htm" -->
										<!-- 											class="btn btn-primary"><i class="bi bi-eye"></i></a> <a -->
										<%-- 											href="admin/edit/${maid.id}.htm?linkEdit" --%>
										<!-- 											class="btn btn-primary "><i class="bi-pencil" -->
										<%-- 												data-action="edit" data-id="${maid.id }"></i></a> <!-- 										<a href="updateMaid.htm" --> --%>
										<!-- 																						class="btn btn-primary "><i class="bi-pencil"></i></a> -->
										<%-- 											<a href="/index/${maid.id}?linkDelete" class="btn btn-danger" --%>
										<%-- 											data-action="delete" data-id="${maid.id}"><i --%>
										<!-- 												class="bi-trash"></i></a></td> -->
									</tr>
									<tr>

										<td scope="row">${maid.id }</td>
										<td scope="col">${maid.fullName }</td>
										<!-- 										<td scope="col">huutri</td> -->
										<!-- 										<td scope="col">Nam</td> -->
										<!-- 										<td scope="col">28/9/2078</td> -->
										<td scope="col">${maid.phoneNumber }</td>
										<td scope="col">${maid.address }</td>
										<td scope="col">${maid.experience }</td>
										<td scope="col">${maid.salary }</td>
										<td scope="col">${maid.employmentType ? 'Fulltime' : 'Partime'}</td>
										<td scope="col">${maid.employee.id }</td>
										<td scope="col">${maid.account.email }</td>
										<td scope="col">
											<div class="form-check form-switch"
												data-switch-text="Rảnh,Đang làm việc">
												<input class="form-check-input" type="checkbox"
													role="switch" disabled="disabled"> <label
													class="form-check-label" for="{checkboxId}"> <span
													class="switch-status">Rảnh</span>
												</label>
											</div>
										</td>

										<td scope="col">
											<div class="form-check form-switch"
												data-switch-text="Bị chặn,Hoạt động">
												<input class="form-check-input" type="checkbox"
													role="switch" id="statusSwitch"
													${maid.account.status ? 'checked' : ''} disabled="disabled">
												<label class="form-check-label" for="statusSwitch">
													<span class="switch-status">${maid.account.status ? 'Hoạt động' : 'Bị chặn'}</span>
												</label>
											</div>
										</td>

										<td scope="col"><a href="admin/maidDetail/1.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a> <a
											href="admin/edit/${maid.id}.htm?linkEdit"
											class="btn btn-primary "><i class="bi-pencil"
												data-action="edit" data-id="${maid.id }"></i></a> <a
											href="maid.htm" class="btn btn-primary "><i
												class="bi-pencil"></i></a> <a
											href="/index/${maid.id}?linkDelete" class="btn btn-danger"
											data-action="delete" data-id="${maid.id}"><i
												class="bi-trash"></i></a></td>
									</tr>

								</tbody>
							</table>
							<div class="pagination-container pt-5"
								style="align-items: center; justify-content: center; text-align: center;">
								<button class="btn btn-primary prev-page">Trước</button>
								<span class="page-number"></span>
								<button class="btn btn-primary next-page">Sau</button>
							</div>
							<!-- End Table with stripped rows -->

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
			&copy; ĐỒ án <strong><span>Nhóm 16</span></strong>Hiring Maid
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

	<script>
		$(document).ready(function() {
			$('.datatable').DataTable({
				"pageLength" : 5, // Hiển thị 5 dòng mỗi trang
				"pagingType" : "simple_numbers", // Hiển thị nút "Trước" và "Sau" cùng với số trang
				"language" : {
					"paginate" : {
						"previous" : "Trước",
						"next" : "Sau"
					}
				}
			});
		});
	</script>
	<script>
	// Lấy dữ liệu từ bảng
	const tableRows = document.querySelectorAll("#table_maids tr");
	const itemsPerPage = 5; // Số dòng hiển thị mỗi trang
	let currentPage = 1;

	// Hàm hiển thị dữ liệu trên trang
	function displayPage(page) {
	  const startIndex = (page - 1) * itemsPerPage;
	  const endIndex = startIndex + itemsPerPage;
	  const tableBody = document.getElementById("table_maids");
	  tableBody.innerHTML = "";

	  for (let i = startIndex; i < endIndex && i < tableRows.length; i++) {
	    tableBody.appendChild(tableRows[i].cloneNode(true));
	  }
	// Cập nhật số thứ tự trang
	  const pageNumberElement = document.querySelector(".page-number");
	  pageNumberElement.textContent ="   " + page +"   ";
	}
	
	


	// Xử lý sự kiện click nút chuyển trang
	document.querySelector(".prev-page").addEventListener("click", () => {
	  if (currentPage > 1) {
	    currentPage--;
	    displayPage(currentPage);
	  }
	});

	document.querySelector(".next-page").addEventListener("click", () => {
	  if (currentPage * itemsPerPage < tableRows.length) {
	    currentPage++;
	    displayPage(currentPage);
	  }
	});

	// Hiển thị trang đầu tiên
	displayPage(currentPage);
	</script>

</body>

</html>