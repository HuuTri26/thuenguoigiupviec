package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import ptithcm.bean.Mailer;
import ptithcm.entity.AccountEntity;
import ptithcm.entity.CustomerEntity;
import ptithcm.entity.RoleEntity;
import ptithcm.service.AccountService;
import ptithcm.service.CustomerService;
import ptithcm.service.RoleService;

@Transactional
@Controller
public class customerController {

	@Autowired
	SessionFactory factory;

	@Autowired
	AccountService accountService;

	@Autowired
	RoleService roleService;

	@Autowired
	CustomerService customerService;

	@Autowired
	Mailer mailer;

	// Trang đăng nhập cho customer
	@RequestMapping("customer/customerLogin")
	public String showCustomerLoginForm(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		return "customer/customerLogin";
	}

	// Trang quên mật khẩu cho customer:
	@RequestMapping("customer/customerForgotPassword")
	public String showCustomerForgotPasswordForm() {
		return "customer/customerForgotPassword";
	}

	// Trang nhập OTP quên mật khẩu:
	@RequestMapping("customer/forgotPasswordOTP")
	public String showForgotPasswordOTP() {
		return "customer/forgotPasswordOTP";
	}
	
	// Trang nhập đặt lại quên mật khẩu:
	@RequestMapping("customer/changeForgotPassword")
	public String showChangeForgotPassword() {
		return "customer/changeForgotPassword";
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

		if (!accountService.isExistAccount(customerAcc.getEmail(),
				accountService.getHashPassword(customerAcc.getPassword()))) {
			errors.rejectValue("email", "customerAcc", "Tài khoản không tồn tại");
			errors.rejectValue("password", "customerAcc", "Hoặc mật khẩu bạn nhập không đúng");
			permission = Boolean.FALSE;
			System.out.println(accountService.getHashPassword(customerAcc.getPassword()));
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

	// Trang đăng ký gmail của customer
	@RequestMapping(value = "customer/customerSignupEmail", params = "register")
	public String showCustomerSignupEmail(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		model.addAttribute("message", "Vui lòng nhập gmail của bạn để hệ thống có thể gửi mã OTP");
		System.out.println("==> Open an register customer account session");
		return "customer/customerSignupEmail";
	}

	// Trang xác thực gmail của customer
	@RequestMapping(value = "customer/verifyOTP", params = "sendOTP")
	public String showCustomerVerifyOTP(HttpServletRequest request, ModelMap model,
			@ModelAttribute("customerAcc") AccountEntity customerAcc, BindingResult errors) {

		Boolean continueVerify = Boolean.TRUE;

		if (customerAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "customerAcc", "Vui lòng nhập tài khoản email của bạn!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isValidEmail(customerAcc.getEmail())) {
			errors.rejectValue("email", "customerAcc", "Vui lòng nhập đúng định dạng email!");
			continueVerify = Boolean.FALSE;
		} else if (accountService.isExistEmail(customerAcc.getEmail())) {
			errors.rejectValue("email", "customerAcc",
					"Tài khoản này đã tồn tại trên hệ thống, vui lòng chọn 1 tài khoản khác!");
			continueVerify = Boolean.FALSE;
		}

		if (continueVerify == Boolean.TRUE) {
			HttpSession session = request.getSession();
			String otp = accountService.generateOTP();
			session.setAttribute("otp", otp);
			customerAcc.setEmail(customerAcc.getEmail());
			session.setAttribute("customerAcc", customerAcc);
			mailer.sendMailAsync("DichVuQuanLyMaid", customerAcc.getEmail(), "OTP", "Mã OTP của bạn là: " + otp);
			model.addAttribute("email", customerAcc.getEmail());
			session.setAttribute("email", customerAcc.getEmail());
			return "customer/verifyOTP";
		} else {
			model.addAttribute("message", "Vui lòng nhập gmail của bạn để hệ thống có thể gửi mã OTP");
			return "customer/customerSignupEmail";
		}

	}

	@RequestMapping(value = "customer/customerSignup", params = "verify", method = RequestMethod.POST)
	public String showCustomerSignupForm(HttpServletRequest request, ModelMap model) {
		HttpSession session = request.getSession();

		String a = request.getParameter("a");
		String b = request.getParameter("b");
		String c = request.getParameter("c");
		String d = request.getParameter("d");
		String e = request.getParameter("e");
		String f = request.getParameter("f");

		String otp = session.getAttribute("otp").toString();
		String otpInput = a + b + c + d + e + f;

		if (otp.equals(otpInput)) {
			String email = session.getAttribute("email").toString();
			model.addAttribute("email", email);
			model.addAttribute("newCustomer", new CustomerEntity());
			return "customer/customerSignup";
		} else {
			model.addAttribute("message", "Mã OTP bạn nhập không đúng vui lòng đúng vui lòng nhập lại!");
			return "customer/verifyOTP";
		}

	}

	@RequestMapping(value = "customer/customerSignup", params = "signup", method = RequestMethod.POST)
	public String signup(HttpServletRequest request, ModelMap model,
			@ModelAttribute("newCustomer") CustomerEntity newCustomer, BindingResult errors) {

		Boolean isValidCustomer = Boolean.TRUE;

		if (newCustomer.getFullName().isEmpty()) {
			errors.rejectValue("fullName", "newCustomer", "Xin vui lòng nhập họ tên của bạn");
			isValidCustomer = Boolean.FALSE;
		} else if (accountService.standardize(newCustomer.getFullName()).length() > 30) {
			errors.rejectValue("fullName", "newCustomer", "Tên của bạn không dài quá 30 ký tự!");
			isValidCustomer = Boolean.FALSE;
		}

		if (newCustomer.getPhoneNumber().isEmpty()) {
			errors.rejectValue("phoneNumber", "newCustomer", "Vui lòng nhập số điện thoại!");
			isValidCustomer = Boolean.FALSE;
		} else if (!accountService.isValidPhoneNumber(newCustomer.getPhoneNumber())) {
			errors.rejectValue("phoneNumber", "newCustomer", "Số điện thoại bạn nhập không hợp lệ!");
			isValidCustomer = Boolean.FALSE;
		}

		String reEnterPass = request.getParameter("re-password");

		if (!newCustomer.getAccount().getPassword().equals(reEnterPass)) {
			errors.rejectValue("account.password", "newCustomer",
					"Mật khẩu nhập lại không trùng khớp vui lòng nhập lại !");
			isValidCustomer = Boolean.FALSE;
		}

		if (isValidCustomer == Boolean.TRUE) {
			RoleEntity customerRole = roleService.getRoleById(3);

			if (customerRole != null) {
				HttpSession session = request.getSession();
				AccountEntity newCustomerAcc = (AccountEntity) session.getAttribute("customerAcc");

				newCustomerAcc.setPassword(accountService.getHashPassword(reEnterPass));
				newCustomerAcc.setRole(customerRole);
				newCustomerAcc.setStatus(true);

				accountService.addAccount(newCustomerAcc);
				newCustomer.setAccount(newCustomerAcc);
				System.out.println("==> Add new customer account successfully!");
			} else {
				System.out.println("Error: Add new customer account unsuccessfully!"
						+ " Reason: RoleEntity with RoleId = 3 does not exist");
			}

			try {
				newCustomer.setFullName(accountService.standardizeName(newCustomer.getFullName()));
				newCustomer.setAddress(newCustomer.getAddress());
				newCustomer.setPhoneNumber(newCustomer.getPhoneNumber());

				customerService.addCustomer(newCustomer);
				System.out.println("==> Add new customer successfully!");

				return "redirect:/";
			} catch (Exception e) {
				System.out.println("Error: Add new customer unsuccessfully!");
			}
		}

		return "customer/customerSignup";
	}

	// Trang dashboard của customer
	@RequestMapping("customer/index")
	public String customerIndex() {
		return "customer/index";
	}
}
