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

<title>Profile contract</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
body {
	background: rgb(99, 39, 120);
	font-family: Arial, sans-serif;
}

.form-control:focus {
	box-shadow: none;
	border-color: #BA68C8
}

.profile-button {
	background: rgb(99, 39, 120);
	box-shadow: none;
	border: none
}

.profile-button:hover {
	background: #682773
}

.profile-button:focus {
	background: #682773;
	box-shadow: none
}

.profile-button:active {
	background: #682773;
	box-shadow: none
}

.back:hover {
	color: #682773;
	cursor: pointer
}

.labels {
	font-size: 11px
}

.add-experience:hover {
	background: #BA68C8;
	color: #fff;
	cursor: pointer;
	border: solid 1px #BA68C8
}

.form-control, .form-select {
	border: 0;
}

.form-control:focus, .form-select:focus {
	-webkit-box-shadow: none;
	box-shadow: none;
}

.bg-form {
	background-color: #383434;
}

.bg-button-submit {
	background-color: #282828;
}

#contract-form {
	display: block;
}
</style>
</head>

<body>

	<!-- ======= Header ======= -->
	<%@include file="/WEB-INF/views/admin/include/header.jsp"%>


	<!-- ======= Sidebar ======= -->

	<!--   </aside>End Sidebar -->

	<%@include file="/WEB-INF/views/admin/include/sidebar.jsp"%>


	<main id="main" style="background-color: gray;" class="mt-10">

		<!-- created by @BrCodeSnippets -->
		<div class="container mt-5 pt-3" id="contract-form">

			<div class="row">
				<div class="col-12">

					<div class="card p-3 bg-form">
						<a href="admin/contractManagement.htm"> <i class="fa fa-times"
							aria-hidden="true"
							style="font-size: 50px; cursor: pointer; color: white; float: right;"></i>
						</a>
						<form class="row g-3  mt-5">

							<div class="col-12">

								<h1 class="text-center fw-bolder text-white mt-3">Hợp đồng</h1>
								<hr>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="createAt" readonly="readonly"
										value="${contract.createAt }"> <label for="inputName">Ngày
										tạo</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="startAt" readonly="readonly"
										value="${contract.startAt }"> <label for="inputName">Ngày
										bắt đầu</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="endAt" readonly="readonly"
										value="${contract.endAt }"> <label for="inputName">Ngày
										kết thúc</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control"
										placeholder="Leave a comment here" id="floatingTextarea"
										style="height: 100px" readonly="readonly">${contract.description }</textarea>
									<label for="floatingTextarea">Ghi chú</label>
								</div>
							</div>

							<div class="col-md-2">
								<div class="form-floating">
									<input type="text" class="form-control bg-light" id="inputZip"
										placeholder="Cep" readonly="readonly"
										value="${contract.employee.fullName }"> <label
										for="inputZip" class="form-label">Tên nhân viên ghi
										nhận</label>
								</div>
							</div>

							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Khách hàng</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="fullName" readonly="readonly"
										value="${contract.customer.fullName }"> <label
										for="inputName">Họ tên</label>
								</div>
							</div>
							<div class="col-12 ">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputEmail4" placeholder="Số điện thoại: "
										name="phonenumber" readonly="readonly"
										value="${contract.customer.phoneNumber }"> <label
										for="inputEmail4">Số điện thoại</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="address"
										readonly="readonly" value="${contract.customer.address }">
									<label for="inputAddress" class="form-label">Địa chỉ</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="email" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="email"
										readonly="readonly"
										value="${contract.customer.account.email }"> <label
										for="inputAddress" class="form-label">Email</label>
								</div>
							</div>

							<div class="col-12">
								<div
									class="p-3 mb-3 text-white fw-bolder fs-3 border-5 border-start">
									Maid</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" autocomplete="off"
										class="form-control bg-light " id="inputName"
										placeholder="Name" name="fullName" readonly="readonly"
										value="${contract.maid.fullName }"> <label
										for="inputName">Họ tên</label>
								</div>
							</div>
							<div class="col-12 ">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputEmail4" placeholder="Số điện thoại: "
										name="phonenumber" readonly="readonly"
										value="${contract.maid.phoneNumber }"> <label
										for="inputEmail4">Số điện thoại</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="address"
										readonly="readonly" value="${contract.maid.address }">
									<label for="inputAddress" class="form-label">Địa chỉ</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="email" class="form-control bg-light "
										id="inputAddress" placeholder="1234 Main St" name="email"
										readonly="readonly" value="${contract.maid.account.email }">
									<label for="inputAddress" class="form-label">Email</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating">
									<input type="text" class="form-control bg-light "
										id="inputCity" placeholder="Cidade" name="exp"
										readonly="readonly" value="${contract.createAt }"> <label
										for="inputCity" class="form-label">Kinh nghiệm</label>
								</div>
							</div>
							<!-- 	<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck">
									<label class="form-check-label shadow-sm text-white"
										for="gridCheck"> Tôi đồng ý với các điều khỏa sau.<a
										class="legacy illigla">Privacy</a>
									</label>
								</div>
							</div> -->
							<!-- 	<div class="col-12 text-end">
								<button type="submit"
									class="btn bg-button-submit w-100 bg-gradient p-3 text-center mb-2 text-white fw-bolder fs-3">Xác
									nhận hợp đồng</button>
								<a href="#" class="text-primary shadow-sm">.</a>
							</div> -->
						</form>
					</div>
				</div>
			</div>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>

		<script>
			const sc = document.getElementById('sign-contract');
			const cf = document.getElementById('contract-form');

			button.addEventListener('click', function() {
				if (cf.style.display === 'none') {
					cf.style.display = 'block';
				} else {
					cf.style.display = 'none';
				}
			});
		</script>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
		<script>
			// Lấy đối tượng "Buy now" button
			const buyNowBtn = document.querySelector('button.btn.btn-warning');

			// Thêm sự kiện click cho button
			buyNowBtn.addEventListener('click', function(event) {
				event.preventDefault(); // Ngăn chặn hành động mặc định của link

				// Hiển thị div với lớp overlay và toggle
				const formContainer = document
						.querySelector('.container.mt-3.pt-3');
				formContainer.classList.remove('d-none');

				// Thêm lớp overlay
				const overlay = document.createElement('div');
				overlay.classList.add('overlay');
				document.body.appendChild(overlay);

				// Thêm sự kiện click cho overlay để đóng form
				overlay.addEventListener('click', function() {
					formContainer.classList.add('d-none');
					overlay.remove();
				});
			});

			// Lấy đối tượng nút "X"
			const closeBtn = document.querySelector('.close-btn');

			// Thêm sự kiện click cho nút "X"
			closeBtn.addEventListener('click', function() {
				const formContainer = document
						.querySelector('.container.mt-3.pt-3');
				formContainer.classList.add('d-none');
				const overlay = document.querySelector('.overlay');
				overlay.remove();
			});
		</script>


	</main>
	<!-- End #main -->

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