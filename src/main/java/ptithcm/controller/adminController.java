package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class adminController {

	// Trang đăng nhập cho admin
	@RequestMapping("admin/adminLogin")
	public String showLoginForm() {
		return "admin/adminLogin";
	}

	// Trang quên mật khẩu cho admin:
	@RequestMapping("admin/adminForgotPassword")
	public String showForgotPasswordForm() {
		return "admin/adminForgotPassword";
	}

	// Hiển thị trang cá nhân admin:
	@RequestMapping("admin/adminProfile")
	public String showAdminProfile() {
		return "admin/adminProfile";
	}

	// Hiển thị danh sách người giúp việc:
	@RequestMapping("admin/maidManagement")
	public String showMaidList() {
		return "admin/maidManagement";
	}

	// Hiển thị form thêm người giúp việc:
	@RequestMapping("admin/addMaid")
	public String showAddMaidForm() {
		return "admin/addMaid";
	}

	// Hiển thị form thông tin người giúp việc:
	@RequestMapping("admin/maidDetail")
	public String showDetailMaidForm() {
		return "admin/maidDetail";
	}

	// Hiển thị danh sách khách hàng:
	@RequestMapping("admin/customerManagement")
	public String showCustomerList() {
		return "admin/customerManagement";
	}

	// Hiển thị form xem thông tin khách hàng:
	@RequestMapping("admin/customerDetail")
	public String showCustomerDetail() {
		return "admin/customerDetail";
	}

	// Hiển thị danh sách dịch vụ:
	@RequestMapping("admin/serviceManagement")
	public String showServiceList() {
		return "admin/serviceManagement";
	}

	// Hiển thị thông tin chi tiết dịch vụ:
	@RequestMapping("admin/serviceDetail")
	public String showServiceDetail() {
		return "admin/serviceDetail";
	}

	// Hiển thị form thêm dịch vụ:
	@RequestMapping("admin/addService")
	public String showAddServiceForm() {
		return "admin/addService";
	}

	// Hiển thị form cập nhật dịch vụ:
	@RequestMapping("admin/updateService")
	public String showUpdateServiceForm() {
		return "admin/updateService";
	}

	// Hiển thị danh sách đặt lịch thuê:
	@RequestMapping("admin/bookingManagement")
	public String showBookingList() {
		return "admin/bookingManagement";
	}

	// Hiển thị thông tin đặt lịch thuê:
	@RequestMapping("admin/bookingDetail")
	public String showBookingDetail() {
		return "admin/bookingDetail";
	}

	// Hiển thị danh sách hợp đồng:
	@RequestMapping("admin/contractManagement")
	public String showContractManagement() {
		return "admin/contractManagement";
	}

	// Hiển thị thông tin hợp đồng:
	@RequestMapping("admin/contractDetail")
	public String showContractDetail() {
		return "admin/contractDetail";
	}

	// Hiển thị danh sách bill:
	@RequestMapping("admin/billManagement")
	public String showBillManagement() {
		return "admin/billManagement";
	}

	// Hiển thị thông tin bill:
	@RequestMapping("admin/billDetail")
	public String showBillDetail() {
		return "admin/billDetail";
	}

	// Hiển thị danh sách feedback:
	@RequestMapping("admin/feedbackManagement")
	public String showfeedbackManagement() {
		return "admin/feedbackManagement";
	}

	// Hiển thị thông tin feedback:
	@RequestMapping("admin/feedbackDetail")
	public String showfeedbackDetail() {
		return "admin/feedbackDetail";
	}
	
	// Đăng xuất:
		@RequestMapping("admin/logout")
		public String showLogout() {
			return "redirect:/main";
		}

	// Xử lý đăng nhập cho admin
	@RequestMapping(value = "admin/adminLogin", method = RequestMethod.POST)
	public String adminLogin(HttpServletRequest request) {
		// Kiểm tra thông tin đăng nhập
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		if (userName.equals("admin") && password.equals("123")) {
			// Đăng nhập thành công
			return "admin/index"; // Chuyển hướng đến trang dashboard của admin
		} else {
			// Đăng nhập không thành công
			request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
			return "admin/adminLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
		}
	}

	// Trang dashboard của admin
	@RequestMapping("admin/index")
	public String adminIndex() {
		return "admin/index";
	}
}