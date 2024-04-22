<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
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

	<!-- ======= Header ======= -->
	<!-- 	<header id="header" class="header fixed-top d-flex align-items-center"> -->

	<!-- 		<div class="d-flex align-items-center justify-content-between"> -->
	<!-- 			<i class="bi bi-list toggle-sidebar-btn"></i> <a href="index.html" -->
	<!-- 				class="logo d-flex align-items-center"> <img -->
	<%-- 				src="<c:url value='/resources/admin/assets/img/EPariksha.png'/>" --%>
	<!-- 				alt=""> <span class="d-none d-lg-block">BookMyMaid</span> -->
	<!-- 			</a> -->

	<!-- 		</div> -->
	<!-- 		<!-- End Logo -->
	-->


	<!-- 		<nav class="header-nav ms-auto"> -->
	<!-- 			<ul class="d-flex align-items-center"> -->



	<!-- 				<li class="nav-item dropdown pe-3"><a -->
	<!-- 					class="nav-link nav-profile d-flex align-items-center pe-0" -->
	<!-- 					href="#" data-bs-toggle="dropdown"> <img -->
	<%-- 						src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>" --%>
	<!-- 						alt="Profile" class="rounded-circle"> <span -->
	<!-- 						class="d-none d-md-block dropdown-toggle ps-2">Profile</span> -->
	<!-- 				</a> -->
	<!-- 				End Profile Iamge Icon -->

	<!-- 					<ul -->
	<!-- 						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"> -->
	<!-- 						<li class="dropdown-header"> -->
	<!-- 							<h6>Profile</h6> <span>Web Designer</span> -->
	<!-- 						</li> -->
	<!-- 						<li> -->
	<!-- 							<hr class="dropdown-divider"> -->
	<!-- 						</li> -->

	<!-- 						<li><a class="dropdown-item d-flex align-items-center" -->
	<!-- 							href="user-profile.html"> <i class="bi bi-person"></i> <span>My -->
	<!-- 									Profile</span> -->
	<!-- 						</a></li> -->
	<!-- 						<li> -->
	<!-- 							<hr class="dropdown-divider"> -->
	<!-- 						</li> -->

	<!-- 						<li><a class="dropdown-item d-flex align-items-center" -->
	<!-- 							href="#"> <i class="bi bi-box-arrow-right"></i> <span>Sign -->
	<!-- 									Out</span> -->
	<!-- 						</a></li> -->

	<!-- 					</ul> -->
	<!-- 					End Profile Dropdown Items</li> -->
	<!-- 				End Profile Nav -->

	<!-- 			</ul> -->
	<!-- 		</nav> -->
	<!-- 		<!-- End Icons Navigation -->
	-->

	<!-- 	</header> -->
	<!-- 	<!-- End Header -->
	-->
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>

	<!-- ======= Sidebar ======= -->
	<!-- 	<aside id="sidebar" class="sidebar"> -->

	<!-- 		<ul class="sidebar-nav" id="sidebar-nav"> -->

	<!-- 			<li class="nav-item"><a class="nav-link collapsed" -->
	<!-- 				href="dashboard.htm"> <i class="bi bi-grid"></i> <span>Dashboard</span> -->
	<!-- 			</a></li> -->
	<!-- 			<!-- End Dashboard Nav -->
	-->

	<!-- 			<li class="nav-item"><a class="nav-link collapsed" -->
	<!-- 				href="#"> <i class="bi bi-person"></i> <span>Maid</span> -->
	<!-- 			</a></li> -->
	<!-- 			<!-- End Maid Page Nav -->
	-->

	<!-- 			<li class="nav-item"><a class="nav-link collapsed" -->
	<!-- 				href="customerManagement.htm"> <i class="bi bi-question-circle"></i> <span>User</span> -->
	<!-- 			</a></li> -->
	<!-- 			<!-- End User Page Nav -->
	-->

	<!-- 			<li class="nav-item"><a class="nav-link collapsed" -->
	<!-- 				href="serviceManagement.htm"> <i class="bi bi-envelope"></i> <span>Services</span> -->
	<!-- 			</a></li> -->
	<!-- 			<!-- End Subject Page Nav -->
	-->

	<!-- 			<li class="nav-item"><a class="nav-link collapsed" -->
	<!-- 				href="bookingManagement.htm"> <i class="bi bi-box-arrow-in-right"></i> -->
	<!-- 					<span>Booking Details</span> -->
	<!-- 			</a></li> -->
	<!-- 			<!-- End Exam History Page Nav -->
	-->


	<!-- 		</ul> -->

	<!-- 	</aside> -->
	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>
	<!-- End Sidebar-->

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Maid Management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active"><a
						href="maidManagement.html">Maid Manegement</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section" style="max-width: 100%;">
			<div class="row">
				<div class="col-lg-24">

					<div class="card">
						<div class="card-body ">
							<div class="card-title">
								<a href="addMaid.htm" class="btn btn-primary">Add Maid</a>
							</div>
							<!--  <h5 class="card-title">Datatables</h5>
              <p>Add lightweight datatables to your project with using the <a href="https://github.com/fiduswriter/Simple-DataTables" target="_blank">Simple DataTables</a> library. Just add <code>.datatable</code> class name to any table you wish to conver to a datatable</p>
 -->
							<!-- Table with stripped rows -->
							<!-- Thêm ô tìm kiếm -->
							<div class="search-container" style="float: right;">
								<select id="searchSelect" class="form-select"
									aria-label="Default select example">
									<option value="all">Tất cả</option>
									<option value="id">Id</option>
									<option value="name">Họ tên</option>
									<option value="phone">Số điện thoại</option>
									<option value="address">Địa chỉ</option>
									<option value="exp">Kinh nghiệm</option>
									<option value="salary">Lương</option>
									<option value="type">Partime/Fulltime</option>
									<option value="employeeId">Id nhân viên</option>
									<option value="email">Email</option>
									<option value="workStatus">Trạng thái làm việc</option>
									<option value="accountStatus">Trạng thái tài khoản</option>
								</select> <input type="text" id="searchInput" placeholder="Tìm kiếm..."
									class="m-2">
								<button id="searchButton">Search</button>
							</div>
							<table class="table datatable ">
								<thead style="background-color: #37517e; color: white">
									<tr>
										<th scope="col">Id <i class="bi bi-arrow-up-short"
											data-sort="id" data-order="asc"></i>
										</th>
										<th scope="col">Họ tên <i class="bi bi-arrow-up-short"
											data-sort="name" data-order="asc"></i>
										</th>
										<th scope="col">Số điện thoại <i
											class="bi bi-arrow-up-short" data-sort="phone"
											data-order="asc"></i>
										</th>
										<!-- 									<th scope="col">Giới tính</th> -->
										<!-- 									<th scope="col">Ngày sinh</th> -->
										<th scope="col">Địa chỉ <i class="bi bi-arrow-up-short"
											data-sort="address" data-order="asc"></i>
										</th>
										<th scope="col">Kinh nghiệm <i
											class="bi bi-arrow-up-short" data-sort="exp" data-order="asc"></i>
										</th>
										<th scope="col">Lương <i class="bi bi-arrow-up-short"
											data-sort="salary" data-order="asc"></i>
										</th>
										<th scope="col">Full/Partime <i
											class="bi bi-arrow-up-short" data-sort="type"
											data-order="asc"></i>
										</th>
										<th scope="col">Id nhân viên <i
											class="bi bi-arrow-up-short" data-sort="employeeId"
											data-order="asc"></i>
										</th>
										<th scope="col">Email <i class="bi bi-arrow-up-short"
											data-sort="email" data-order="asc"></i>
										</th>
										<th scope="col">Trạng thái làm việc <i
											class="bi bi-arrow-up-short" data-sort="workStatus"
											data-order="asc"></i>
										</th>
										<th scope="col">Trạng thái tài khoản <i
											class="bi bi-arrow-up-short" data-sort="accountStatus"
											data-order="asc"></i>
										</th>
									</tr>
								</thead>
								<tbody id="table_maids">

									<c:forEach var="maid" items="${maidList }">

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

											<td scope="col" id="accountStatus-${maid.id}" class="accountStatus">${maid.account.status ? 'Hoạt động' : 'Bị chặn'}

											</td>

											<td scope="col"><a href="maidDetail.htm"
												class="btn btn-primary"><i class="bi bi-eye"></i> </a> <!-- 												 <a -->
												<%-- 												href="admin/edit/${maid.id}.htm?linkEdit" --%>
												<!-- 												class="btn btn-primary "><i class="bi-pencil" -->
												<%-- 													data-action="edit" data-id="${maid.id }"></i></a>  --%>
												<!-- 										<a href="updateMaid.htm" --> <!-- 											class="btn btn-primary "><i class="bi-pencil"></i></a> -->
												<a href="/index/${maid.id}?linkDelete"
												class="btn btn-danger" data-action="delete"
												data-id="${maid.id}"><i class="bi-trash"></i></a>
												<button onclick="confirmBlock(${maid.id})">Block</button>
												<button onclick="confirmActive(${maid.id})">Active</button>
											</td>
										</tr>
									</c:forEach>

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
	<!-- 	CHuyển trạng thái -->
	<script>
    function confirmBlock(maidId) {
        if (confirm("Bạn có chắc chắn muốn chặn tài khoản này?")) {
            // Nếu người dùng nhấn 'OK' trong dialog xác nhận
            // Gửi yêu cầu đến máy chủ để chặn tài khoản với mã người giúp việc là 'maidId'
            // Sau khi nhận phản hồi từ máy chủ, thay đổi trạng thái tài khoản trong bảng HTML nếu cần
            // Ví dụ:
            document.getElementById("accountStatus-" + maidId).textContent = "Bị chặn";
        }
    }

    function confirmActive(maidId) {
        // Xử lý sự kiện Active tương tự như Block
          if (confirm("Bạn có chắc chắn muốn kích hoạt tài khoản này?")) {
            // Nếu người dùng nhấn 'OK' trong dialog xác nhận
            // Gửi yêu cầu đến máy chủ để chặn tài khoản với mã người giúp việc là 'maidId'
            // Sau khi nhận phản hồi từ máy chủ, thay đổi trạng thái tài khoản trong bảng HTML nếu cần
            // Ví dụ:
            document.getElementById("accountStatus-" + maidId).textContent = "Hoạt động";
        }
    }
</script>

<!-- Phân trang - tìm kiếm- sắp xếp -->
	<script>
// Lấy tất cả các phần tử i (biểu tượng mũi tên)
const arrows = document.querySelectorAll('i[data-sort]');
let tableRows = Array.from(document.querySelectorAll("#table_maids tr"));
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
      case 'name':
        aValue = aRow[1].textContent.trim();
        bValue = bRow[1].textContent.trim();
        break;
      case 'phone':
        aValue = aRow[2].textContent.trim();
        bValue = bRow[2].textContent.trim();
        break;
      case 'address':
          aValue = aRow[3].textContent.trim();
          bValue = bRow[3].textContent.trim();
          break;
      case 'exp':
          aValue = aRow[4].textContent.trim();
          bValue = bRow[4].textContent.trim();
          break;
      case 'salary':
          aValue = aRow[5].textContent.trim();
          bValue = bRow[5].textContent.trim();
          break;
      case 'type':
          aValue = aRow[6].textContent.trim();
          bValue = bRow[6].textContent.trim();
          break;
      case 'employeeId':
          aValue = aRow[7].textContent.trim();
          bValue = bRow[7].textContent.trim();
          break;
      case 'email':
          aValue = aRow[8].textContent.trim();
          bValue = bRow[8].textContent.trim();
          break;
      case 'workStatus':
          aValue = aRow[9].textContent.trim();
          bValue = bRow[9].textContent.trim();
          break;
      case 'accountStatus':
          aValue = aRow[10].textContent.trim();
          bValue = bRow[10].textContent.trim();
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
  const tableBody = document.getElementById("table_maids");

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
  const tableBody = document.getElementById("table_maids");

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
            case 'name':
                return rowData[1].includes(searchText);
            case 'phone':
                return rowData[2].includes(searchText);
            case 'address':
                return rowData.some(data => data.includes(searchText));
            case 'exp':
                return rowData[0].includes(searchText);
            case 'salary':
                return rowData[1].includes(searchText);
            case 'type':
                return rowData[2].includes(searchText);
            case 'employeeId':
                return rowData.some(data => data.includes(searchText));
            case 'email':
                return rowData[0].includes(searchText);
            case 'workStatus':
                return rowData[1].includes(searchText);
            case 'accountStatus':
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
        document.getElementById('table_maids').innerHTML = '';
        document.getElementById('table_maids').appendChild(noResultRow);
    } else {
        // Nếu có kết quả, hiển thị trang đầu tiên của kết quả
        displayFilteredFirstPage();
    }
});

// Hiển thị trang đầu tiên
displayPage(currentPage);

function resetTable() {
    // Hiển thị lại toàn bộ dữ liệu ban đầu
    document.getElementById('table_maids').innerHTML = '';
    originalTableRows.forEach(row => document.getElementById('table_maids').appendChild(row));
}

</script>
	<!-- 	<script> -->
	<!-- // 		$(document).ready(function() { -->
	<!-- // 			$('.datatable').DataTable({ -->
	<!-- // 				"pageLength" : 5, // Hiển thị 5 dòng mỗi trang -->
	<!-- // 				"pagingType" : "simple_numbers", // Hiển thị nút "Trước" và "Sau" cùng với số trang -->
	<!-- // 				"language" : { -->
	<!-- // 					"paginate" : { -->
	<!-- // 						"previous" : "Trước", -->
	<!-- // 						"next" : "Sau" -->
	<!-- // 					} -->
	<!-- // 				} -->
	<!-- // 			}); -->
	<!-- // 		}); -->
	<!-- <!-- 	</script> -->
	-->
	<!-- <!-- 	<script> -->
	-->
	<!-- // 	// Lấy dữ liệu từ bảng -->
	<!-- // 	const tableRows = document.querySelectorAll("#table_maids tr"); -->
	<!-- // 	const itemsPerPage = 5; // Số dòng hiển thị mỗi trang -->
	<!-- // 	let currentPage = 1; -->

	<!-- // 	// Hàm hiển thị dữ liệu trên trang -->
	<!-- // 	function displayPage(page) { -->
	<!-- // 	  const startIndex = (page - 1) * itemsPerPage; -->
	<!-- // 	  const endIndex = startIndex + itemsPerPage; -->
	<!-- // 	  const tableBody = document.getElementById("table_maids"); -->
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