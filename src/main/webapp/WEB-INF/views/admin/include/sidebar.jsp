<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<base href="${pageContext.servletContext.contextPath}/">
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/index.htm"> <i class="bi bi-grid"></i> <span>Trang
					chủ</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/maidManagement.htm"> <i class="bi bi-person"></i> <span>Người
					giúp việc</span>
		</a></li>
		<!-- End Maid Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/customerManagement.htm"> <i
				class="bi bi-question-circle"></i> <span>Khách hàng</span>
		</a></li>
		<!-- End User Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/serviceManagement.htm"> <i class="bi bi-envelope"></i>
				<span>Gói dịch vụ</span>
		</a></li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/categoryManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Loại dịch vụ</span></a></li>
		<!-- End Subject Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/bookingManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Danh sách đơn đặt
					lịch thuê</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/contractManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Danh sách Hợp
					Đồng</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/billManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Quản lý thanh
					toán </span></a></li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="admin/feedbackManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Quản lý đánh giá
			</span></a></li>
		<!-- End Exam History Page Nav -->


	</ul>

</aside>
<!-- End Sidebar-->