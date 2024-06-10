<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<base href="${pageContext.servletContext.contextPath}/">
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link collapsed"
			href="maid/index.htm"> <i class="bi bi-grid"></i> <span>Trang
					chủ</span>
		</a></li>
		<!-- End Dashboard Nav -->


		<li class="nav-item"><a class="nav-link collapsed"
			href="maid/bookingManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Quản lý đơn đặt
					lịch thuê</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="maid/contractManagement.htm"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Quản lý hợp đồng</span>
		</a></li>
		<!-- End Exam History Page Nav -->


	</ul>

</aside>
<!-- End Sidebar-->