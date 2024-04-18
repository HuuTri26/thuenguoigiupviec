package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.AccountEntity;
import ptithcm.service.AccountService;

@Transactional
@Controller
public class customerController {

	@Autowired
	SessionFactory factory;

	@Autowired
	AccountService accountService;

	// Trang đăng nhập cho customer
	@RequestMapping("customer/customerLogin")
	public String showCustomerLoginForm(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		return "customer/customerLogin";
	}

	@RequestMapping("customer/customerSignup")
	public String showCustomerSignupForm() {
		return "customer/customerSignup";
	}

	// Trang quên mật khẩu cho customer:
	@RequestMapping("customer/customerForgotPassword")
	public String showCustomerForgotPasswordForm() {
		return "customer/customerForgotPassword";
	}

	// Hiển thị trang thông tin cá nhân của customer:
	@RequestMapping("customer/customerProfile")
	public String showCustomerProfile() {
		return "customer/customerProfile";

	}

	// Hiển thị form cập nhật thông tin cho customer:
	@RequestMapping("customer/updateCustomer")
	public String showCustomerUpdateProfile() {
		return "customer/updateCustomer";

	}

	// Hiển thị form change password:
	@RequestMapping("customer/customerChangePassword")
	public String showCustomerChangePassword() {
		return "customer/customerChangePassword";

	}

	// Hiển thị danh sách các đặt dịch vụ :
	@RequestMapping("customer/bookingManagement")
	public String showBookingList() {
		return "customer/bookingManagement";

	}

	// Hiển thị thông tin các đặt dịch vụ :
	@RequestMapping("customer/bookingDetail")
	public String showBookingDetail() {
		return "customer/bookingDetail";

	}

	// Hiển thị danh sách hợp đồng
	@RequestMapping("customer/contractManagement")
	public String showContractList() {
		return "customer/contractManagement";

	}

	// Hiển thị thông tin hợp đồng hợp đồng
	@RequestMapping("customer/contractDetail")
	public String showContractDetail() {
		return "customer/contractDetail";

	}

	// Hiển thị danh sách hợp đồng
	@RequestMapping("customer/billDetail")
	public String showBillDetail() {
		return "customer/billDetail";

	}

	// Hiển thị danh sách hợp đồng
	@RequestMapping("customer/billManagement")
	public String showBillList() {
		return "customer/billManagement";

	}

	// Trang danh sách người giúp việc fulltime cho customer:
	@RequestMapping("customer/maidList")
	public String showMaidList() {
		return "customer/maidList";
	}

	// Trang thông tin người giúp việc fulltime cho customer:
	@RequestMapping("customer/maidDetail")
	public String showMaidDetail() {
		return "customer/maidDetail";
	}

	// Trang danh sách người giúp việc fulltime cho customer:
	@RequestMapping("customer/serviceList")
	public String showServiceList() {
		return "customer/serviceList";
	}

	// Trang danh sách người giúp việc fulltime cho customer:
	@RequestMapping("customer/serviceDetail")
	public String showServiceDetail() {
		return "customer/serviceDetail";
	}

	// Xử lý đăng nhập cho customer
	@RequestMapping(value = "customer/customerLogin", method = RequestMethod.POST)
	public String customerLogin(ModelMap model, HttpServletRequest request,
			@ModelAttribute("customerAcc") AccountEntity customerAcc, BindingResult errors) {

//			// Kiểm tra thông tin đăng nhập
//			String userName = request.getParameter("userName");
//			String password = request.getParameter("password");
//			if (userName.equals("customer") && password.equals("123")) {
//				// Đăng nhập thành công
//				return "main"; // Chuyển hướng đến trang dashboard của customer
//			} else {
//				// Đăng nhập không thành công
//				request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
//				return "customer/customerLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
//			}
		Boolean permission = Boolean.TRUE;

		if (customerAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "customerAcc", "Xin vui lòng nhập username hoặc email!");
			return "admin/adminLogin";
		} else if (customerAcc.getPassword().isEmpty()) {
			errors.rejectValue("password", "customerAcc", "Xin vui lòng nhập mật khẩu!");
			return "admin/adminLogin";
		}

		if (!accountService.isExistAccount(customerAcc.getEmail(), customerAcc.getPassword())) {
			errors.rejectValue("email", "customerAcc", "Tài khoản không tồn tại");
			errors.rejectValue("password", "customerAcc", "Hoặc mật khẩu bạn nhập không đúng");
			permission = Boolean.FALSE;
		} else if (!accountService.getStatusFromAccount(customerAcc.getEmail())) {
			errors.rejectValue("email", "customerAcc", "Tài khoản của bạn đã bị khóa");
			permission = Boolean.FALSE;
		} else if (accountService.getRoleIdFromAccount(customerAcc.getEmail()) != 3) {
			errors.rejectValue("email", "customerAcc", "Tài khoản của bạn không có quyền truy cập vào trang này");
			permission = Boolean.FALSE;
		}

		if (permission) {
			System.out.println("Login successfully!");
			return "customer/index";
		} else {
			System.out.println("Login unsuccessfully!");
			return "customer/customerLogin";
		}

	}

	// Trang dashboard của customer
	@RequestMapping("customer/index")
	public String customerIndex() {
		return "customer/index";
	}
}
