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

<title>Quản lý hóa đơn</title>
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
<style>
</style>
</head>



<body>
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>
	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Thông tin hóa đơn</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.htm">Trang
							chủ</a></li>
					<li class="breadcrumb-item active"><a
						href="admin/billManagement.htm">Danh sách hóa đơn</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<!-- Thêm ô tìm kiếm -->
							<div class="search-container" style="float: right;">
								<select id="searchSelect" class="form-select"
									aria-label="Default select example">
									<option value="all">Tất cả</option>
									<option value="id">Id đơn đặt lịch</option>
									<option value="date">Ngày thanh toán</option>
									<option value="total">Tổng tiền</option>
								</select> <input type="text" id="searchInput" placeholder="Tìm kiếm..."
									class="m-2">
								<button id="searchButton">Search</button>
							</div>
							<table class="table datatable">
								<thead style="background-color: #37517e; color: white">
									<tr>
										<th scope="col">Id đơn đặt lịch <i
											class="bi bi-arrow-up-short" data-sort="id" data-order="asc"></i>

										</th>
										<th scope="col">Ngày thanh toán <i
											class="bi bi-arrow-up-short" data-sort="date"
											data-order="asc"></i>
										</th>
										<th scope="col">Tổng tiền <i class="bi bi-arrow-up-short"
											data-sort="total" data-order="asc"></i>
										</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="table_bills">

									<c:forEach var="bill" items="${billList }">

										<tr>
											<td scope="row">${bill.booking.id }</td>
											<td scope="col">${bill.paymentTime }</td>
											<td scope="col"><fmt:formatNumber value="${bill.total }"
													pattern="#,###.## VND;VND -#,###.##" type="currency"
													currencySymbol="VND" /></td>
										<!-- 	<td scope="col"><a href="admin/billDetail/1.htm"
												class="btn btn-primary"><i class="bi bi-eye"></i></a><a
												href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td> -->
										</tr>

									</c:forEach>

									<%-- <tr>
										<td scope="row">2</td>
										<td scope="col">2021-12-24</td>
										<td scope="col"><fmt:formatNumber value="2500"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">4</td>
										<td scope="col">2020-12-24</td>
										<td scope="col"><fmt:formatNumber value="3000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">6</td>
										<td scope="col">2025-12-24</td>
										<td scope="col"><fmt:formatNumber value="3000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">8</td>
										<td scope="col">2019-12-24</td>
										<td scope="col"><fmt:formatNumber value="3000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">9</td>
										<td scope="col">2029-12-24</td>
										<td scope="col"><fmt:formatNumber value="9000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">8</td>
										<td scope="col">2019-12-24</td>
										<td scope="col"><fmt:formatNumber value="38000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">9</td>
										<td scope="col">2029-12-24</td>
										<td scope="col"><fmt:formatNumber value="288000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">9</td>
										<td scope="col">2029-12-24</td>
										<td scope="col"><fmt:formatNumber value="3000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">9</td>
										<td scope="col">2029-12-24</td>
										<td scope="col"><fmt:formatNumber value="78000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
											class="btn btn-primary"><i class="bi bi-eye"></i></a><a
											href="#" class="btn btn-danger"><i class="bi-trash"></i></a></td>
									</tr>
									<tr>
										<td scope="row">9</td>
										<td scope="col">2029-12-24</td>
										<td scope="col"><fmt:formatNumber value="12000"
												pattern="#,###.## VND;VND -#,###.##" type="currency"
												currencySymbol="VND" /></td>
										<td scope="col"><a href="billDetail.htm"
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
	<!-- sắp xếp , phân trang, tìm kiếm -->
	<script>
// Lấy tất cả các phần tử i (biểu tượng mũi tên)
const arrows = document.querySelectorAll('i[data-sort]');
let tableRows = Array.from(document.querySelectorAll("#table_bills tr"));
let sortedRows = tableRows.slice(0); // Lấy dữ liệu từ hàng thứ 2 trở đi
let filteredRows = tableRows.slice(0); // Sao chép dữ liệu từ tableRows vào filteredRows
const itemsPerPage = 5; // Số dòng hiển thị mỗi trang
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

//Hàm sắp xếp dữ liệu
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
      case 'date':
        aValue = aRow[1].textContent.trim();
        bValue = bRow[1].textContent.trim();
        break;
      case 'total':
        aValue = aRow[2].textContent.trim();
        bValue = bRow[2].textContent.trim();
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
  const tableBody = document.getElementById("table_bills");

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
  const tableBody = document.getElementById("table_bills");

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
            case 'date':
                return rowData[1].includes(searchText);
            case 'total':
                return rowData[2].includes(searchText);
            default:
                return false;
        }
    });

    // Hiển thị dữ liệu lọc
    if (filteredRows.length === 0) {
        // Nếu không có kết quả, hiển thị thông báo "Không tìm thấy kết quả"
        const noResultRow = document.createElement('tr');
        noResultRow.innerHTML = '<td colspan="3">Không tìm thấy kết quả</td>';
        document.getElementById('table_bills').innerHTML = '';
        document.getElementById('table_bills').appendChild(noResultRow);
    } else {
        // Nếu có kết quả, hiển thị trang đầu tiên của kết quả
        displayFilteredFirstPage();
    }
});

// Hiển thị trang đầu tiên
displayPage(currentPage);

function resetTable() {
    // Hiển thị lại toàn bộ dữ liệu ban đầu
    document.getElementById('table_bills').innerHTML = '';
    originalTableRows.forEach(row => document.getElementById('table_bills').appendChild(row));
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
</body>

</html>