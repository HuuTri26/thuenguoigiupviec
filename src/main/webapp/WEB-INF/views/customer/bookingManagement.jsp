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
							<!-- Thêm ô tìm kiếm -->
							<div class="search-container" style="float: right;">
								<select id="searchSelect" class="form-select"
									aria-label="Default select example">
									<option value="all">Tất cả</option>
									<option value="id">Id</option>
									<option value="customerId">Id khách hàng</option>
									<option value="serviceId">Id gói dịch vụ</option>
									<option value="startAt">Ngày bắt đầu</option>
									<option value="address">Địa chỉ</option>
									<option value="note">Ghi chú</option>
									<option value="price">Giá</option>
									<option value="bookingStatus">Trạng thái đặt lịch</option>
									<option value="paymentStatus">Trạng thái thanh toán</option>
									<option value="employeeId">Id nhân viên</option>
									<option value="rating">Rating</option>
									<option value="feedback">Feedback</option>

								</select> <input type="text" id="searchInput" placeholder="Tìm kiếm..."
									class="m-2">
								<button id="searchButton">Search</button>
							</div>
							<!-- Table with stripped rows -->
							<h3>Quản lý đặt dịch vụ</h3>
							<table class="table datatable">
								<thead style="background-color: #37517e; color: white">
									<tr>
										<th scope="col">Id <i class="bi bi-arrow-up-short"
											data-sort="id" data-order="asc"></i>
										</th>
										<th scope="col">Tên khách hàng <i
											class="bi bi-arrow-up-short" data-sort="customerId"
											data-order="asc"></i>
										</th>
										<!-- 										<th scope="col">Id người giúp việc</th> -->
										<th scope="col">Tên gói dịch vụ <i
											class="bi bi-arrow-up-short" data-sort="serviceId"
											data-order="asc"></i>
										</th>
										<th scope="col">Ngày bắt đầu <i
											class="bi bi-arrow-up-short" data-sort="startAt"
											data-order="asc"></i>
										</th>
										<th scope="col">Địa chỉ <i class="bi bi-arrow-up-short"
											data-sort="address" data-order="asc"></i>
										</th>
										<th scope="col">Ghi chú <i class="bi bi-arrow-up-short"
											data-sort="note" data-order="asc"></i>
										</th>
										<th scope="col">Giá <i class="bi bi-arrow-up-short"
											data-sort="price" data-order="asc"></i>
										</th>
										<th scope="col">Trạng thái đặt lịch <i
											class="bi bi-arrow-up-short" data-sort="bookingStatus"
											data-order="asc"></i>
										</th>
										<th scope="col">Trạng thái thanh toán <i
											class="bi bi-arrow-up-short" data-sort="paymentStatus"
											data-order="asc"></i>
										</th>
										<th scope="col">Id nhân viên <i
											class="bi bi-arrow-up-short" data-sort="employeeId"
											data-order="asc"></i>
										</th>
										<th scope="col">Ratting <i class="bi bi-arrow-up-short"
											data-sort="rating" data-order="asc"></i>
										</th>
										<th scope="col">Feedback <i class="bi bi-arrow-up-short"
											data-sort="feedback" data-order="asc"></i>
										</th>
									</tr>
								</thead>
								<tbody id="table_bookings">

									<c:forEach var="booking" items="${bookingList }">

										<tr>
											<td scope="row">${booking.id }</td>
											<td scope="col">${booking.customer.fullName}</td>
											<td scope="col">${booking.service.name }</td>
											<!-- <td scope="col">5</td> -->
											<td scope="col">${booking.startTime }</td>
											<td scope="col">${booking.bookingAddress }</td>
											<td scope="col">${booking.note }</td>
											<td scope="col"><fmt:formatNumber value="${booking.service.servicePrices[0].price }"
													pattern="#,###.## VND;VND -#,###.##" type="currency"
													currencySymbol="VND" /></td>
											<td scope="col" id="bookingStatus" class="bookingStatus">${booking.bookingStatus == 1 ? 'Đã xác nhận' : 'Chưa xác nhận' }
												<!-- <div class="form-check form-switch"
													data-switch-text="Chưa xác nhận,Đã xác nhận">
													<input class="form-check-input" type="checkbox"
														role="switch"> <label class="form-check-label"
														for="{checkboxId}"> <span class="switch-status">Chưa
															xác nhận</span>
													</label>
												</div> -->
											</td>
											<td scope="col" id="paymentStatus" class="paymentStatus">${booking.paymentStatus == 1 ? 'Đã thanh toán' : 'Chưa thanh toán' }</td>
											<td scope="col">${booking.employee.id }</td>
											<td scope="col">5</td>
											<td scope="col">Tốt</td>

											<td scope="col"><a href="customer/bookingDetail.htm"
												class="btn btn-primary"><i class="bi bi-eye"></i></a><a
												href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
										</tr>

									</c:forEach>

									<%-- <tr>
										<td scope="row">1</td>
										<td scope="col">3</td>
										<td scope="col">2</td>
										<td scope="col">5</td>
										<td scope="col">28/10/2024</td>
										<td scope="col">97 Man Thiện</td>
										<td scope="col">Mang máy cắt cỏ</td>
										<td scope="col"><fmt:formatNumber value="78000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
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
										<td scope="col"><fmt:formatNumber value="8000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
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
									<tr>
										<td scope="row">1</td>
										<td scope="col">3</td>
										<td scope="col">2</td>
										<td scope="col">5</td>
										<td scope="col">28/10/2024</td>
										<td scope="col">97 Man Thiện</td>
										<td scope="col">Mang máy cắt cỏ</td>
										<td scope="col"><fmt:formatNumber value="78000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
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
									<tr>
										<td scope="row">9</td>
										<td scope="col">6</td>
										<td scope="col">3</td>
										<td scope="col">12</td>
										<td scope="col">28/10/2022</td>
										<td scope="col">Tan Thiện</td>
										<td scope="col">Hang máy cắt cỏ</td>
										<td scope="col"><fmt:formatNumber value="78000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
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
									<tr>
										<td scope="row">1</td>
										<td scope="col">3</td>
										<td scope="col">2</td>
										<td scope="col">5</td>
										<td scope="col">28/10/2024</td>
										<td scope="col">97 Man Thiện</td>
										<td scope="col">Mang máy cắt cỏ</td>
										<td scope="col"><fmt:formatNumber value="78000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
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
									<tr>
										<td scope="row">2</td>
										<td scope="col">6</td>
										<td scope="col">7</td>
										<td scope="col">2</td>
										<td scope="col">28/10/2019</td>
										<td scope="col">Man Thiện</td>
										<td scope="col">Mang máy cắt cỏ</td>
										<td scope="col"><fmt:formatNumber value="78000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><div class="form-check form-switch"
												data-switch-text="Chưa xác nhận,Đã xác nhận">
												<input class="form-check-input" type="checkbox"
													role="switch"> <label class="form-check-label"
													for="{checkboxId}"> <span class="switch-status">Chưa
														xác nhận</span>
												</label>
											</div></td>
										<td scope="col">Đã thanh toán</td>
										<td scope="col">7</td>
										<td scope="col">5</td>
										<td scope="col">Tốt</td>

										<td scope="col"><a href="bookingDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr> --%>
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

	<!-- sắp xếp , phân trang, tìm kiếm -->
	<script>
// Lấy tất cả các phần tử i (biểu tượng mũi tên)
const arrows = document.querySelectorAll('i[data-sort]');
let tableRows = Array.from(document.querySelectorAll("#table_bookings tr"));
let sortedRows = tableRows.slice(0); // Lấy dữ liệu từ hàng thứ 2 trở đi
let filteredRows = tableRows.slice(0); // Sao chép dữ liệu từ tableRows vào filteredRows
const itemsPerPage = 4; // Số dòng hiển thị mỗi trang
let currentPage = 1;

// Thêm sự kiện click cho mỗi phần tử mũi tên
arrows.forEach(arrow => {
  arrow.addEventListener('click', () => {
    const column = arrow.dataset.sort; // Lấy tên cột cần sắp xếp
    const order = arrow.dataset.order === 'asc' ? 'desc' : 'asc'; // Đảo ngược thứ tự sắp xếp
    sortTable(column, order);

    // Cập nhật thuộc tính data-order của phần tử mũi tên
    arrow.dataset.order = order;
    // Đổi chiều mũi tên
    toggleArrowDirection(arrow, order);
    // Hiển thị trang đầu tiên sau khi sắp xếp
    currentPage = 1;
    displayPage(currentPage);
  });
});

// Hàm đổi chiều mũi tên
function toggleArrowDirection(arrow, order) {
  const arrowClass = order === 'asc' ? 'bi-arrow-up-short' : 'bi-arrow-down-short';
  arrow.classList.remove('bi-arrow-up-short', 'bi-arrow-down-short');
  arrow.classList.add(arrowClass);
}

// Hàm sắp xếp dữ liệu
function sortTable(column, order) {
  sortedRows.sort((a, b) => {
    const aRow = a.querySelectorAll('td');
    const bRow = b.querySelectorAll('td');
    let aValue, bValue;

    switch (column) {
      case 'id':
        aValue = aRow[0].textContent.trim();
        bValue = bRow[0].textContent.trim();
        break;
      case 'customerId':
        aValue = aRow[1].textContent.trim();
        bValue = bRow[1].textContent.trim();
        break;
      case 'serviceId':
        aValue = aRow[2].textContent.trim();
        bValue = bRow[2].textContent.trim();
        break;
      case 'startAt':
          aValue = aRow[3].textContent.trim();
          bValue = bRow[3].textContent.trim();
          break;
        case 'address':
          aValue = aRow[4].textContent.trim();
          bValue = bRow[4].textContent.trim();
          break;
        case 'note':
            aValue = aRow[5].textContent.trim();
            bValue = bRow[5].textContent.trim();
            break;
        case 'price':
            aValue = aRow[6].textContent.trim();
            bValue = bRow[6].textContent.trim();
            break;
          case 'bookingStatus':
              aValue = aRow[7].textContent.trim();
              bValue = bRow[7].textContent.trim();
              break;
          case 'paymentStatus':
              aValue = aRow[8].textContent.trim();
              bValue = bRow[8].textContent.trim();
              break;
            case 'employeeId':
                aValue = aRow[9].textContent.trim();
                bValue = bRow[9].textContent.trim();
                break;
            case 'rating':
                aValue = aRow[10].textContent.trim();
                bValue = bRow[10].textContent.trim();
                break;
              case 'feedback':
                  aValue = aRow[11].textContent.trim();
                  bValue = bRow[11].textContent.trim();
                  break;
    }

    if (order === 'asc') {
      return aValue.localeCompare(bValue, undefined, { numeric: true });
    } else {
      return bValue.localeCompare(aValue, undefined, { numeric: true });
    }
  });
  // Cập nhật lại sortedRows sau mỗi lần sắp xếp
  filteredRows = sortedRows.slice(0);
}

// Hàm hiển thị dữ liệu trên trang
function displayPage(page) {
  const startIndex = (page - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  const tableBody = document.getElementById("table_bookings");

  tableBody.innerHTML = "";

  for (let i = startIndex; i < endIndex && i < sortedRows.length; i++) {
    tableBody.appendChild(sortedRows[i]);
  }

  // Cập nhật số thứ tự trang
  const pageNumberElement = document.querySelector(".page-number");
  pageNumberElement.textContent = " " + page + " ";
}

// Xử lý sự kiện click nút chuyển trang
// document.querySelector(".prev-page").addEventListener("click", () => {
//   if (currentPage > 1) {
//     currentPage--;
//     displayPage(currentPage);
//   }
// });

// document.querySelector(".next-page").addEventListener("click", () => {
//   if (currentPage * itemsPerPage < sortedRows.length) {
//     currentPage++;
//     displayPage(currentPage);
//   }
// });

//Hàm hiển thị dữ liệu trên trang sau khi tìm kiếm
function displayFilteredPage(page) {
  const startIndex = (page - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  const tableBody = document.getElementById("table_bookings");

  tableBody.innerHTML = "";

  for (let i = startIndex; i < endIndex && i < filteredRows.length; i++) {
    tableBody.appendChild(filteredRows[i]);
  }

  // Cập nhật số thứ tự trang
  const pageNumberElement = document.querySelector(".page-number");
  pageNumberElement.textContent = " " + page + " ";
}

// Xử lý sự kiện click nút chuyển trang sau khi tìm kiếm
document.querySelector(".prev-page").addEventListener("click", () => {
  if (currentPage > 1) {
    currentPage--;
    displayFilteredPage(currentPage);
  }
});

document.querySelector(".next-page").addEventListener("click", () => {
  const totalPages = Math.ceil(filteredRows.length / itemsPerPage);
  if (currentPage < totalPages) {
    currentPage++;
    displayFilteredPage(currentPage);
  }
});

// Hàm hiển thị trang đầu tiên sau khi tìm kiếm
function displayFilteredFirstPage() {
  currentPage = 1;
  displayFilteredPage(currentPage);
}

//Xử lý sự kiện khi nhập ký tự vào ô tìm kiếm
document.getElementById('searchButton').addEventListener('click', () => {
    // Lấy giá trị nhập vào ô input và thuộc tính đã chọn từ combobox
    const searchText = document.getElementById('searchInput').value.trim().toLowerCase();
    const searchAttribute = document.getElementById('searchSelect').value;

    // Lọc dữ liệu dựa trên giá trị nhập và thuộc tính đã chọn
    filteredRows = tableRows.filter(row => {
        // Lấy dữ liệu của từng ô trong hàng và chuyển đổi thành chữ thường
        const rowData = Array.from(row.querySelectorAll('td')).map(cell => cell.textContent.trim().toLowerCase());

        // Lọc dữ liệu dựa trên thuộc tính đã chọn từ combobox
        switch (searchAttribute) {
            case 'all':
                return rowData.some(data => data.includes(searchText));
            case 'id':
                return rowData[0].includes(searchText);
            case 'customerId':
                return rowData[1].includes(searchText);
            case 'serviceId':
                return rowData[2].includes(searchText);
            case 'startAt':
                return rowData[3].includes(searchText);
            case 'address':
                return rowData[4].includes(searchText);
            case 'note':
                return rowData[5].includes(searchText);
            case 'price':
                return rowData[6].includes(searchText);
            case 'bookingStatus':
                return rowData[7].includes(searchText);
            case 'paymentStatus':
                return rowData[8].includes(searchText);
            case 'rating':
                return rowData[9].includes(searchText);
            case 'feedback':
                return rowData[10].includes(searchText);
            default:
                return false;
        }
    });

    // Hiển thị dữ liệu lọc
    if (filteredRows.length === 0) {
        // Nếu không có kết quả, hiển thị thông báo "Không tìm thấy kết quả"
        const noResultRow = document.createElement('tr');
        noResultRow.innerHTML = '<td colspan="3">Không tìm thấy kết quả</td>';
        document.getElementById('table_bookings').innerHTML = '';
        document.getElementById('table_bookings').appendChild(noResultRow);
    } else {
        // Nếu có kết quả, hiển thị trang đầu tiên của kết quả
        displayFilteredFirstPage();
    }
});

// Hiển thị trang đầu tiên
displayPage(currentPage);

function resetTable() {
    // Hiển thị lại toàn bộ dữ liệu ban đầu
    document.getElementById('table_bookings').innerHTML = '';
    originalTableRows.forEach(row => document.getElementById('table_bookings').appendChild(row));
}

</script>
	<!-- Chuyển trạng thái -->
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


	<!-- 	<script> -->
	<!-- // 	const switchElements = document.querySelectorAll('.form-check.form-switch'); -->

	<!-- // 	switchElements.forEach(switchElement => { -->
	<!-- // 	  const checkbox = switchElement.querySelector('input[type="checkbox"]'); -->
	<!-- // 	  const statusSpan = switchElement.querySelector('.switch-status'); -->
	<!-- // 	  const switchText = switchElement.dataset.switchText.split(','); // Split text options -->

	<!-- // 	  checkbox.addEventListener('change', function() { -->
	<!-- // 	    statusSpan.textContent = switchText[this.checked ? 1 : 0]; -->
	<!-- // 	  }); -->
	<!-- // 	}); -->
	<!-- <!-- 	</script> -->
	-->

	<!-- <!-- 	<script> -->
	-->
	<!-- // 	// Lấy dữ liệu từ bảng -->
	<!-- // 	const tableRows = document.querySelectorAll("#table_bookings tr"); -->
	<!-- // 	const itemsPerPage = 5; // Số dòng hiển thị mỗi trang -->
	<!-- // 	let currentPage = 1; -->

	<!-- // 	// Hàm hiển thị dữ liệu trên trang -->
	<!-- // 	function displayPage(page) { -->
	<!-- // 	  const startIndex = (page - 1) * itemsPerPage; -->
	<!-- // 	  const endIndex = startIndex + itemsPerPage; -->
	<!-- // 	  const tableBody = document.getElementById("table_bookings"); -->
	<!-- // 	  tableBody.innerHTML = ""; -->

	<!-- // 	  for (let i = startIndex; i < endIndex && i < tableRows.length; i++) { -->
	<!-- // 	    tableBody.appendChild(tableRows[i].cloneNode(true)); -->
	<!-- // 	  } -->
	<!-- // 	// Cập nhật số thứ tự trang -->
	<!-- // 	  const pageNumberElement = document.querySelector(".page-number"); -->
	<!-- // 	  pageNumberElement.textContent ="   " + page +"   "; -->
	<!-- // 	} -->




	<!-- // 	// Xử lý sự kiện click nút chuyển trang -->
	<!-- // 	document.querySelector(".prev-page").addEventListener("click", () => { -->
	<!-- // 	  if (currentPage > 1) { -->
	<!-- // 	    currentPage--; -->
	<!-- // 	    displayPage(currentPage); -->
	<!-- // 	  } -->
	<!-- // 	}); -->

	<!-- // 	document.querySelector(".next-page").addEventListener("click", () => { -->
	<!-- // 	  if (currentPage * itemsPerPage < tableRows.length) { -->
	<!-- // 	    currentPage++; -->
	<!-- // 	    displayPage(currentPage); -->
	<!-- // 	  } -->
	<!-- // 	}); -->

	<!-- // 	// Hiển thị trang đầu tiên -->
	<!-- // 	displayPage(currentPage); -->
	<!-- 	</script> -->

</body>

</html>