package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import ptithcm.bean.Mailer;
import ptithcm.entity.AccountEntity;
import ptithcm.entity.EmployeeEntity;
import ptithcm.entity.MaidEntity;
import ptithcm.entity.RoleEntity;
import ptithcm.service.AccountService;
import ptithcm.service.MaidService;
import ptithcm.service.RoleService;

@Controller
public class maidController {

	@Autowired
	SessionFactory factory;

	@Autowired
	AccountService accountService;

	@Autowired
	RoleService roleService;

	@Autowired
	MaidService maidService;

	@Autowired
	Mailer mailer;

	// Trang đăng nhập cho maid
	@RequestMapping("maid/maidLogin")
	public String showMaidLoginForm(Model model) {
		model.addAttribute("maidAcc", new AccountEntity());
		return "maid/maidLogin";
	}

	// Xử lý đăng nhập cho maid
	@RequestMapping(value = "maid/maidLogin", method = RequestMethod.POST)
	public String maidLogin(Model model, HttpServletRequest request, @ModelAttribute("maidAcc") AccountEntity maidAcc,
			BindingResult errors) {
//			// Kiểm tra thông tin đăng nhập
//			String userName = request.getParameter("userName");
//			String password = request.getParameter("password");
//			if (userName.equals("maid") && password.equals("123")) {
//				// Đăng nhập thành công
//				return "maid/index"; // Chuyển hướng đến trang dashboard của maid
//			} else {
//				// Đăng nhập không thành công
//				request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
//				return "maid/maidLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
//			}

		Boolean permission = Boolean.TRUE;

		if (maidAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "maidAcc", "Xin vui lòng nhập username hoặc email!");
			return "admin/adminLogin";
		} else if (maidAcc.getPassword().isEmpty()) {
			errors.rejectValue("password", "maidAcc", "Xin vui lòng nhập mật khẩu!");
			return "admin/adminLogin";
		}

		if (!accountService.isExistAccount(maidAcc.getEmail(), accountService.getHashPassword(maidAcc.getPassword()))) {
			errors.rejectValue("email", "maidAcc", "Tài khoản không tồn tại");
			errors.rejectValue("password", "maidAcc", "Hoặc mật khẩu bạn nhập không đúng");
			permission = Boolean.FALSE;
			System.out.println(accountService.getHashPassword(maidAcc.getPassword()));
		} else if (!accountService.getStatusFromAccount(maidAcc.getEmail())) {
			errors.rejectValue("email", "maidAcc", "Tài khoản của bạn đã bị khóa");
			permission = Boolean.FALSE;
		} else if (accountService.getRoleIdFromAccount(maidAcc.getEmail()) != 2) {
			errors.rejectValue("email", "maidAcc", "Tài khoản của bạn không có quyền truy cập vào trang này");
			permission = Boolean.FALSE;
		}

		if (permission) {
			System.out.println("Login successfully!");
			HttpSession session = request.getSession();

			RoleEntity adminRole = roleService.getRoleById(2);
			maidAcc.setRole(adminRole);
			maidAcc.setStatus(true);
			session.setAttribute("Account", maidAcc);
			System.out.println("==> Session's memories: 'adminAcc' has been allocated");

			// Tạo maid dùng cho cả session
			MaidEntity maid = maidService.getMaidByEmail(maidAcc.getEmail());
			session.setAttribute("maid", maid);
			System.out.println("==> Session's memories: 'employee' has been allocated");
			return "maid/index";
		} else {
			System.out.println("Login unsuccessfully!");
			return "maid/maidLogin";
		}
	}

	@RequestMapping("maid/maidSignup")
	public String showMaidSignupForm() {
		return "maid/maidSignup";
	}

	// Trang quên mật khẩu cho maid:
	@RequestMapping("maid/maidForgotPassword")
	public String showMaidForgotPasswordForm(Model model) {
		model.addAttribute("maidAcc", new AccountEntity());

		return "maid/maidForgotPassword";
	}

	@RequestMapping(value = "maid/maidForgotPassword", method = RequestMethod.POST)
	public String maidForgotPassword(HttpServletRequest request, @ModelAttribute("maidAcc") AccountEntity maidAcc,
			BindingResult errors) {

		Boolean continueVerify = Boolean.TRUE;

		if (maidAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "maidAcc", "Vui lòng nhập email mà bạn thiết lập làm tài khoản!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isValidEmail(maidAcc.getEmail())) {
			errors.rejectValue("email", "maidAcc", "Email mà bạn vừa nhập không hợp lệ, vui lòng nhập lại!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isExistEmail(maidAcc.getEmail())) {
			errors.rejectValue("email", "maidAcc",
					"Email mà bạn vừa nhập không tồn tại trong hệ thống, vui lòng kiểm tra lại!");
			continueVerify = Boolean.FALSE;
		}

		if (continueVerify == Boolean.TRUE) {
			HttpSession session = request.getSession();
			String otp = accountService.generateOTP();
			session.setAttribute("otp", otp);
			session.setAttribute("email", maidAcc.getEmail());
			mailer.sendMailAsync("DichVuQuanLyMaid", maidAcc.getEmail(), "OTP Forgot Password",
					"Mã OTP của bạn là: " + otp);
			return "maid/forgotPasswordOTP";
		} else
			return "maid/maidForgotPassword";

	}

	// Trang nhập OTP quên mật khẩu:
	@RequestMapping("maid/forgotPasswordOTP")
	public String showForgotPasswordOTP() {
		return "maid/forgotPasswordOTP";
	}

	@RequestMapping(value = "maid/forgotPassOTP", params = "verify", method = RequestMethod.GET)
	public String verifyForgotPassOTP(HttpServletRequest request, Model model) {
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
			return "maid/changeForgotPassword";
		} else {
			model.addAttribute("message", "Mã OTP bạn nhập không đúng vui lòng đúng vui lòng nhập lại!");
			return "maid/ForgotPasswordOTP";
		}
	}

	// Trang nhập đặt lại quên mật khẩu:
	@RequestMapping("maid/changeForgotPassword")
	public String showChangeForgotPassword() {
		return "maid/changeForgotPassword";
	}

	@RequestMapping(value = "maid/changeForgotPassword", method = RequestMethod.POST)
	public String changeForgotPassword(HttpServletRequest request, Model model, SessionStatus sessionStatus) {
		Boolean isValidPass = Boolean.TRUE;
		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("email");
		AccountEntity maidAcc = accountService.getAccountByEmail(email);
		String newPass = request.getParameter("new-password");
		String reEnterNewPass = request.getParameter("re-enter-new-password");

		if (newPass.isEmpty()) {
			model.addAttribute("message1", "Vui lòng nhập mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		} else if (reEnterNewPass.isEmpty()) {
			model.addAttribute("message2", "Vui lòng nhập lại mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		} else if (!newPass.equals(reEnterNewPass)) {
			model.addAttribute("message2", "Nhập lại mật khẩu không trùng khớp vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		}

		if (isValidPass) {
			maidAcc.setPassword(accountService.getHashPassword(newPass));
			accountService.updateAccount(maidAcc);
			System.out.println("==> Maid account password updated successfully!");

			request.getSession().invalidate();
			System.out.println("==> Invalidate the session");

			sessionStatus.setComplete();
			System.out.println("==> Clear model attributes ");

			return "redirect:/";
		} else {
			System.out.println("Error: Maid account password updated unsuccessfully!");
			return "maid/changeForgotPassword";
		}
	}

	// Trang profile cho maid:
	@RequestMapping(value = "maid/maidProfile", method = RequestMethod.GET)
	public String showMaidProfile() {
		
		return "maid/maidProfile";
	}

	// Trang cập nhật profile cho maid:
	@RequestMapping("maid/maidEditProfile")
	public String showMaidEditProfile(Model model) {
		model.addAttribute("maidInfo", new MaidEntity());
		
		System.out.println("==> Open edit maid profile session");
		
		return "maid/maidEditProfile";
	}
	
	
	@RequestMapping(value = "maid/maidEditProfile", method = RequestMethod.POST)
	public String editMaidProfile(HttpServletRequest request, @ModelAttribute("maidInfo") MaidEntity maidInfo, BindingResult errors) {
		HttpSession session = request.getSession();

		MaidEntity maid = (MaidEntity) session.getAttribute("maid");
		
		Boolean isValidInfo = Boolean.TRUE;

		if (maidInfo.getFullName().isEmpty()) {
			errors.rejectValue("fullName", "maidInfo", "Tên người dùng không được để trống!");
			isValidInfo = Boolean.FALSE;
		} else if (maidInfo.getPhoneNumber().isEmpty()) {
			errors.rejectValue("phoneNumber", "maidInfo", "Số điện thoại không được để trống!");
			isValidInfo = Boolean.FALSE;
		}

		if (accountService.standardize(maidInfo.getFullName()).length() > 30) {
			errors.rejectValue("fullName", "maidInfo", "Tên người dùng không được dài quá 30 ký tự!");
			isValidInfo = Boolean.FALSE;
		} else if (!accountService.isValidPhoneNumber(maidInfo.getPhoneNumber())) {
			errors.rejectValue("phoneNumber", "maidInfo", "Số điện thoại nhập không hợp lệ, vui lòng nhập lại!");
			isValidInfo = Boolean.FALSE;
		}

		if (!isValidInfo) {
			System.out.println("Error: Maid info updated unsuccessfully!");
			return "redirect:/maid/maidEditProfile.htm";
		}

		try {
			maid.setFullName(accountService.standardizeName(maidInfo.getFullName()));
			maid.setPhoneNumber(maidInfo.getPhoneNumber());
			maid.setAddress(maidInfo.getAddress());
			maid.setExperience(maidInfo.getExperience());
			maid.setSalary(maidInfo.getSalary());

			maidService.updateMaid(maid);
			System.out.println("==> Maid info updated successfully!");

		} catch (Exception e) {
			System.out.println("Error: Maid info updated unsuccessfully!");
		}
		return "maid/index";
	}

	// Trang thay đổi password cho maid:
	@RequestMapping("maid/maidChangePassword")
	public String showMaidChangePassword() {
		return "maid/maidChangePassword";
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

	// Trang thông tin hợp đồng cho maid:
	@RequestMapping("maid/contractDetail")
	public String showMaidContractDetail() {
		return "maid/contractDetail";
	}

	// Trang dashboard của maid
	@RequestMapping("maid/index")
	public String maidIndex() {
		return "maid/index";
	}
}
