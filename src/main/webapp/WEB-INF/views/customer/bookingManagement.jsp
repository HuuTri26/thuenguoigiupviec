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
	<%@include file="/WEB-INF/views/customer/include/header.jsp"%>

	<main>
		<div class="pagetitle">
			<h1>Thông tin đặt dịch vụ</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="bookingManagement.htm">Thông tin đặt dịch vụ</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<!--       <h5 class="card-title">Datatables</h5>
              <p>Add lightweight datatables to your project with using the <a href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">Simple DataTables</a> library. Just add <code>.datatable</code> class name to any table you wish to conver to a datatable</p>
 -->
							<!-- Table with stripped rows -->
							<h3>Quản lý đặt dịch vụ</h3>
							<table class="table datatable">
								<thead style="background-color: #37517e; color: white">
									<tr>
										<th scope="col">Id</th>
										<th scope="col">Id khách hàng</th>
										<th scope="col">Id người giúp việc</th>
										<th scope="col">Id gói dịch vụ</th>
										<th scope="col">Ngày bắt đầu</th>
										<th scope="col">Địa chỉ</th>
										<th scope="col">Ghi chú</th>
										<th scope="col">Giá</th>
										<th scope="col">Trạng thái đặt lịch</th>
										<th scope="col">Trạng thái thanh toán</th>
										<th scope="col">Id nhân viên</th>
										<th scope="col">Ratting</th>
										<th scope="col">Feedback</th>
									</tr>
								</thead>
								<tbody id="table_bookings">
									<tr>
										<td scope="row">1</td>
										<td scope="col">3</td>
										<td scope="col">2</td>
										<td scope="col">5</td>
										<td scope="col">28/10/2024</td>
										<td scope="col">97 Man Thiện</td>
										<td scope="col">Mang máy cắt cỏ</td>
										<td scope="col">3000$</td>
										<td scope="col">
											<div class="form-check form-switch"
												data-switch-text="Chưa xác nhận,Đã xác nhận">
												<input class="form-check-input" type="checkbox"
													role="switch"> <label class="form-check-label"
													for="{checkboxId}"> <span class="switch-status">Chưa
														xác nhận</span>
												</label>
											</div>
										</td>
										<td scope="col">Đã thanh toán</td>
										<td scope="col">5</td>
										<td scope="col">5</td>
										<td scope="col">Tốt</td>

										<td scope="col"><a href="bookingDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">1</td>
										<td scope="col">3</td>
										<td scope="col">2</td>
										<td scope="col">5</td>
										<td scope="col">28/10/2024</td>
										<td scope="col">97 Man Thiện</td>
										<td scope="col">Mang máy cắt cỏ</td>
										<td scope="col">3000$</td>
										<td scope="col"><div class="form-check form-switch"
												data-switch-text="Chưa xác nhận,Đã xác nhận">
												<input class="form-check-input" type="checkbox"
													role="switch"> <label class="form-check-label"
													for="{checkboxId}"> <span class="switch-status">Chưa
														xác nhận</span>
												</label>
											</div></td>
										<td scope="col">Đã thanh toán</td>
										<td scope="col">5</td>
										<td scope="col">5</td>
										<td scope="col">Tốt</td>

										<td scope="col"><a href="bookingDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
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

	<script>
	// Lấy dữ liệu từ bảng
	const tableRows = document.querySelectorAll("#table_bookings tr");
	const itemsPerPage = 5; // Số dòng hiển thị mỗi trang
	let currentPage = 1;

	// Hàm hiển thị dữ liệu trên trang
	function displayPage(page) {
	  const startIndex = (page - 1) * itemsPerPage;
	  const endIndex = startIndex + itemsPerPage;
	  const tableBody = document.getElementById("table_bookings");
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