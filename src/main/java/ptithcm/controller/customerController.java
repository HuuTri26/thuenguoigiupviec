package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class customerController {
	// Trang đăng nhập cho customer
		@RequestMapping("customer/customerLogin")
		public String showCustomerLoginForm() {
			return "customer/customerLogin";
		}
		
		@RequestMapping("customer/customerSignup")
		public String showCustomerSignupForm() {
			return "customer/customerSignup";
		}
		
		//Trang quên mật khẩu cho customer:
		@RequestMapping("customer/customerForgotPassword")
		public String showCustomerForgotPasswordForm() {
			return "customer/customerForgotPassword";
		}

		// Xử lý đăng nhập cho customer
		@RequestMapping(value = "customer/customerLogin", method = RequestMethod.POST)
		public String customerLogin(HttpServletRequest request) {
			// Kiểm tra thông tin đăng nhập
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			if (userName.equals("customer") && password.equals("123")) {
				// Đăng nhập thành công
				return "main"; // Chuyển hướng đến trang dashboard của customer
			} else {
				// Đăng nhập không thành công
				request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
				return "customer/customerLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
			}
		}

		// Trang dashboard của customer
		@RequestMapping("customer/index")
		public String customerIndex() {
			return "main";
		}
}
