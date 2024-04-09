package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class maidController {

	// Trang đăng nhập cho maid
	@RequestMapping("maid/maidLogin")
	public String showMaidLoginForm() {
		return "maid/maidLogin";
	}

	@RequestMapping("maid/maidSignup")
	public String showMaidSignupForm() {
		return "maid/maidSignup";
	}

	// Trang quên mật khẩu cho maid:
	@RequestMapping("maid/maidForgotPassword")
	public String showMaidForgotPasswordForm() {
		return "maid/maidForgotPassword";
	}
	
	// Trang profile cho maid:
	@RequestMapping("maid/maidProfile")
	public String showMaidProfile() {
		return "maid/maidProfile";
	}
	
	// Trang danh sách đặt lịch thuê cho maid:
	@RequestMapping("maid/bookingManagement")
	public String showMaidBookingManagement() {
		return "maid/bookingManagement";
	}
	
	// Trang danh sách đặt lịch thuê cho maid:
	@RequestMapping("maid/bookingDetail")
	public String showMaidBookingDetail() {
		return "maid/bookingDetail";
	}
	
	// Trang danh sách đặt hợp đồng cho maid:
	@RequestMapping("maid/contractManagement")
	public String showMaidContractManagement() {
		return "maid/contractManagement";
	}

	// Trang thông tin hợp đồng  cho maid:
	@RequestMapping("maid/contractDetail")
	public String showMaidContractDetail() {
		return "maid/contractDetail";
	}
	// Xử lý đăng nhập cho maid
	@RequestMapping(value = "maid/maidLogin", method = RequestMethod.POST)
	public String maidLogin(HttpServletRequest request) {
		// Kiểm tra thông tin đăng nhập
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		if (userName.equals("maid") && password.equals("123")) {
			// Đăng nhập thành công
			return "maid/index"; // Chuyển hướng đến trang dashboard của maid
		} else {
			// Đăng nhập không thành công
			request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
			return "maid/maidLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
		}
	}

	// Trang dashboard của maid
	@RequestMapping("maid/index")
	public String maidIndex() {
		return "maid/index";
	}
}
