<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Thông tin đặt lịch</title>
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
<!-- CSS custom -->
<link
	href="<c:url value='/resources/admin/assets/css/modal_select_maid.css'/>"
	rel="stylesheet">

</head>

<body>

	<!-- ======= Header ======= -->
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>
	<!--   </aside>End Sidebar -->

	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>


	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Thông tin đặt lịch</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admin/index.html">Trang chủ</a></li>
					<li class="breadcrumb-item  active"><a
						href="admin/bookingManagement.htm">booking</a></li>
					<li class="breadcrumb-item  active"><a
						href="admin/bookingDetail/${booking.id}.htm">Profile booking</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">
				<!-- Modal select Maid -->

				<!-- The Modal -->
				<div id="modal-select-maid" class="modal-choose-maid">

					<!-- Modal content -->
					<div class="modal-choose-maid-content">
						<span class="modal-choose-maid-close modal-choose-maid-close-js">&times;</span>
						<h2 class="row justify-content-center">Chọn người giúp việc</h2>
						<form:form
							action="admin/bookingDetail/${booking.id }/confirmMaid.htm"
							method="post">
							<div class="tbody-scrollable">
								<table class="table datatable ">
									<thead class="thead-fixed"
										style="background-color: #37517e; color: white">
										<tr>

											<th scope="col-1">Id</th>
											<th scope="col-2">Họ tên</th>
											<th scope="col-1">Số điện thoại</th>

											<th scope="col-3">Địa chỉ</th>
											<th scope="col-1">Full/Partime</th>
											<th scope="col-1"></th>

										</tr>
									</thead>
									<tbody id="table_maids">


										<c:forEach var="maid" items="${maidsAvailable}">
											<tr>
												<td scope="row">${maid.id }</td>
												<td scope="col-2">${maid.fullName }</td>

												<td scope="col-2">${maid.phoneNumber }</td>
												<td scope="col-3">${maid.account.email }</td>
												<%-- <td scope="col-1">${maid.employmentType ==1 ? 'Full-time':'Part-time' }</td> --%>
												<td scope="col-1">Part-time</td>

												<td><input class="checkbox-limited"
													style="cursor: pointer;" type="checkbox"
													name="selectedItems" value="${maid.id}"
													<c:forEach var="selectedMaid" items="${maidsSelected}">
                    <c:if test="${maid.id == selectedMaid.id}">
                        checked="checked"
                    </c:if>
                </c:forEach>></td>

												<!-- <td scope="col"><a href="/index/1?linkDelete"
													class="btn btn-danger" data-action="delete" data-id="1"><i
														class="bi-trash"></i></a></td> -->
											</tr>
										</c:forEach>


									</tbody>
								</table>
							</div>

							<div
								style="width: fit-content; margin-left: auto; margin-right: auto;">
								<!-- <button class="btn btn-danger modal-choose-maid-close-js" style ="margin-right:10px">Hủy</button> -->
								<button class="btn btn-success">Xác nhận</button>
							</div>
						</form:form>
					</div>

				</div>
				<!-- the end of modal -->
				<div class="col-xl-4">

					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">

							<img
								src="<c:url value='/resources/admin/assets/img/profile-img.jpg'/>"
								alt="Profile" class="rounded-circle">
							<h2>Thông tin khách hàng</h2>
							<div style="margin-top: 30px">

								<h3>Họ tên khách hàng: ${booking.customer.fullName}</h3>
								<h3>Số điện thoại: ${booking.customer.phoneNumber}</h3>
							</div>
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

								<li class="nav-item">
									<button class="nav-link" data-bs-toggle="tab"
										data-bs-target="#profile-edit">Danh sách người giúp
										việc</button>
								</li>

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
									<!-- <h5 class="card-title">Miêu tả</h5> -->
									<%-- <p class="small fst-italic">${booking.note }</p> --%>

									<h5 class="card-title">Thông tin Booking</h5>

									<!-- 									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Id khách hàng</div>
										<div class="col-lg-9 col-md-8">1</div>
									</div> -->
									<!-- <div class="row">
										<div class="col-lg-3 col-md-4 label ">Danh sách người giúp việc</div>
										<div class="col-lg-9 col-md-8"><a href="bookingMaidChecked.htm">Xem danh sách</a></div>
									</div> -->
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Tên dịch vụ</div>
										<div class="col-lg-9 col-md-8">
											<a>${service.name }</a>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Số lượng người giúp việc</div>
										<div class="col-lg-9 col-md-8">
											<a>${service.maidQuantity }</a>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày bắt đầu</div>
										<div class="col-lg-9 col-md-8">${booking.startTime }</div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
										<div class="col-lg-9 col-md-8">${booking.bookingAddress }</div>
									</div>


									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ghi chú</div>
										<div class="col-lg-9 col-md-8">${booking.note }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Giá</div>
										<div class="col-lg-9 col-md-8">${booking.price }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Ngày tạo</div>
										<div class="col-lg-9 col-md-8">${booking.createAt }</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Nhân viên duyệt</div>
										<div class="col-lg-9 col-md-8">${booking.employee.fullName }</div>
									</div>



									<div class="row">
										<div class="col-lg-3 col-md-4 label">Trạng thái thanh
											toán</div>
										<div class="col-lg-9 col-md-8">${booking.paymentStatus == 1 ? 'Đã thanh toán' : 'Chưa thanh toán'}</div>
									</div>
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Trạng thái đặt lịch</div>

										<c:choose>
											<c:when test="${booking.bookingStatus == 1}">
												<!-- 1: Chờ xác nhận, 2: Đã xác nhận, 3: Hoàn thành, 0: Đã hủy -->
												<!-- Nội dung khi điều kiện đúng -->
												<div class="col-lg-9 col-md-8">Chờ xác nhận</div>
											</c:when>
											<c:when test="${booking.bookingStatus == 2}">
												<!-- Nội dung khi điều kiện đúng -->
												<div class="col-lg-9 col-md-8">Đã xác nhận</div>
											</c:when>
											<c:when test="${booking.bookingStatus == 3}">
												<!-- Nội dung khi điều kiện đúng -->
												<div class="col-lg-9 col-md-8">Đã hoàn thành</div>
											</c:when>
											<c:otherwise>
												<!-- Nội dung khi điều kiện sai -->
												<div class="col-lg-9 col-md-8">Đã hủy</div>
											</c:otherwise>
										</c:choose>
									</div>
									<c:if test="${booking.bookingStatus ==1 }">
										<div class="row">
											<form:form class="col-2" action="admin/bookingDetail/confirmBooking/${booking.id}.htm">
												<button class="btn btn-primary">Duyệt đơn</button>
											</form:form>
											<form:form class="col-2" action="admin/bookingDetail/canceledBooking/${booking.id}.htm">
												<button class="btn btn-danger">Hủy đơn</button>
											</form:form>
											<div class="col-8"></div>
										</div>
									</c:if>

								</div>
								<!-- danh sách người giúp việc được phân  -->
								<div class="tab-pane fade profile-edit pt-3" id="profile-edit">
									<c:if test="${booking.bookingStatus ==2 }">
										<div class="card-title">
										<button class="btn btn-primary" id="btn-select-maid">Phân
											công người giúp việc</button>
									</div>
									</c:if>
									
									<div class="row">
										<div class="col-lg-3 col-md-4 label">Số lượng người giúp việc tối đa	</div>
										<div class="col-lg-9 col-md-8">
											<a>${service.maidQuantity }</a>
										</div>
										
									</div>
									<table class="table datatable ">
										<thead style="background-color: #37517e; color: white">
											<tr>

												<th scope="col-1">Id</th>
												<th scope="col-2">Họ tên</th>
												<th scope="col-1">Số điện thoại</th>
												<!-- 									<th scope="col">Giới tính</th> -->
												<!-- 									<th scope="col">Ngày sinh</th> -->
												<th scope="col-3">Địa chỉ</th>
												<th scope="col-1">Full/Partime</th>
												<th scope="col-3">Email</th>


											</tr>
										</thead>
										<tbody id="table_maids">

											<c:forEach var="maid" items="${maidsSelected}">
												<tr>
													<td scope="row">${maid.id }</td>
													<td scope="col-2">${maid.fullName }</td>

													<td scope="col-2">${maid.phoneNumber }</td>
													<td scope="col-3">${maid.address }</td>
													<td scope="col-1">${maid.employmentType == true ? 'Full-time':'Part-time' }</td>

													<td scope="col">${maid.account.email }</td>




												</tr>


											</c:forEach>

										</tbody>
									</table>
								</div>
								<!-- End Bordered Tabs -->

							</div>

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
	<!-- JS custom for modal-select-maid -->
	<script type="text/javascript"
		src="<c:url value='/resources/admin/assets/js/modal_select_maid.js'/>"></script>
	<!-- Ràng buộc số lượng người giúp việc -->
	<script>
	// Đây là nơi bạn có thể đặt mã JavaScript
    var limit = ${service.maidQuantity}; // Giới hạn số lượng checkbox có thể chọn
    document.addEventListener('DOMContentLoaded', function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                var checkedCheckboxes = document.querySelectorAll('input[type="checkbox"]:checked');
                if (checkedCheckboxes.length > limit) {
                    this.checked = false; // Bỏ chọn nếu số lượng vượt quá giới hạn
                    alert('Chỉ được chọn tối đa ' + limit + ' người giúp việc.');
                }
            });
        });
    });
</script>
	</script>
</body>

</html>