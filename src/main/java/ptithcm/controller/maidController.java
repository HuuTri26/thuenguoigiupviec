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


	// Trang đăng nhập cho maid
	@RequestMapping("maid/maidLogin")
	public String showMaidLoginForm(Model model) {
		model.addAttribute("maidAcc", new AccountEntity());
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

	// Trang nhập OTP quên mật khẩu:
	@RequestMapping("maid/forgotPasswordOTP")
	public String showForgotPasswordOTP() {
		return "maid/forgotPasswordOTP";
	}

	// Trang nhập đặt lại quên mật khẩu:
	@RequestMapping("maid/changeForgotPassword")
	public String showChangeForgotPassword() {
		return "maid/changeForgotPassword";
	}

	// Trang profile cho maid:
	@RequestMapping("maid/maidProfile")
	public String showMaidProfile() {
		return "maid/maidProfile";
	}

	// Trang cập nhật profile cho maid:
	@RequestMapping("maid/maidEditProfile")
	public String showMaidEditProfile() {
		return "maid/maidEditProfile";
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

	// Xử lý đăng nhập cho maid
	@RequestMapping(value = "maid/maidLogin", method = RequestMethod.POST)
	public String maidLogin(Model model, HttpServletRequest request, @ModelAttribute("maidAcc") AccountEntity maidAcc,
			BindingResult errors) {
//		// Kiểm tra thông tin đăng nhập
//		String userName = request.getParameter("userName");
//		String password = request.getParameter("password");
//		if (userName.equals("maid") && password.equals("123")) {
//			// Đăng nhập thành công
//			return "maid/index"; // Chuyển hướng đến trang dashboard của maid
//		} else {
//			// Đăng nhập không thành công
//			request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
//			return "maid/maidLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
//		}

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

	// Trang dashboard của maid
	@RequestMapping("maid/index")
	public String maidIndex() {
		return "maid/index";
	}
}
