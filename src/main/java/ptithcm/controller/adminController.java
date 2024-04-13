package ptithcm.controller;

import java.util.List;

//import javax.security.auth.message.callback.SecretKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.validator.constraints.Email;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.AccountEntity;
import ptithcm.entity.EmployeeEntity;
import ptithcm.entity.MaidEntity;
import ptithcm.service.AccountService;
import ptithcm.service.EmployeeService;
import ptithcm.service.MaidService;

@Transactional
@Controller
public class adminController {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	AccountService accountService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	MaidService maidService;


	// Trang đăng nhập cho admin
	@RequestMapping("admin/adminLogin")
	public String showLoginForm(Model model) {
		model.addAttribute("adminAcc", new AccountEntity());
		return "admin/adminLogin";
	}

	// Trang quên mật khẩu cho admin:
	@RequestMapping("admin/adminForgotPassword")
	public String showForgotPasswordForm() {
		return "admin/adminForgotPassword";
	}

	// Hiển thị trang cá nhân admin:
	@RequestMapping(value ="admin/adminProfile", method = RequestMethod.GET)
	public String showAdminProfile(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String adminEmail = (String) session.getAttribute("adminEmail");
		
		EmployeeEntity employeeInfo = employeeService.getEmployeeByEmail(adminEmail);
		
		model.addAttribute("employeeInfo", employeeInfo);
		
//		System.out.println(adminEmail);
		
		return "admin/adminProfile";
	}

	// Hiển thị danh sách người giúp việc:
	@RequestMapping("admin/maidManagement")
	public String showMaidList(Model model) {
		List<MaidEntity> maidList = maidService.getListMaid();
		model.addAttribute("maidList", maidList);
		
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
//>>>>>>> branch 'main' of https://github.com/HuuTri26/thuenguoigiupviec
		}

	// Xử lý đăng nhập cho admin
	@RequestMapping(value = "admin/adminLogin", method = RequestMethod.POST)
	public String adminLogin(ModelMap model ,HttpServletRequest request, @ModelAttribute("adminAcc") AccountEntity adminAcc, BindingResult errors) {
		
//		// Kiểm tra thông tin đăng nhập
//		String userName = request.getParameter("userName");
//		String password = request.getParameter("password");
//		if (userName.equals("admin") && password.equals("123")) {
//			// Đăng nhập thành công
//			return "admin/index"; // Chuyển hướng đến trang dashboard của admin
//		} else {
//			// Đăng nhập không thành công
//			request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
//			return "admin/adminLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
//		}
		
		Boolean permission = Boolean.TRUE;
		
		if(adminAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "adminAcc", "Xin vui lòng nhập username hoặc email!");
			return "admin/adminLogin";
		}else if(adminAcc.getPassword().isEmpty()) {
			errors.rejectValue("password", "adminAcc", "Xin vui lòng nhập mật khẩu!");
			return "admin/adminLogin";
		}
		
		if(!accountService.isExistAccount(adminAcc.getEmail(), adminAcc.getPassword())) {
			errors.rejectValue("email", "adminAcc", "Tài khoản không tồn tại");
			errors.rejectValue("password", "adminAcc", "Hoặc mật khẩu bạn nhập không đúng");
			permission = Boolean.FALSE;
		}else if(!accountService.getStatusFromAccount(adminAcc.getEmail(), adminAcc.getPassword())) {
			errors.rejectValue("email", "adminAcc", "Tài khoản của bạn đã bị khóa");
			permission = Boolean.FALSE;
		}else if(accountService.getRoleIdFromAccount(adminAcc.getEmail(), adminAcc.getPassword()) != 1) {
			errors.rejectValue("email", "adminAcc", "Tài khoản của bạn không có quyền truy cập vào trang này");
			permission = Boolean.FALSE;
		}
		
		if(permission) {
			System.out.println("Login successfully!");
			HttpSession session = request.getSession();
			session.setAttribute("adminEmail", adminAcc.getEmail());
			return "admin/index";
		}else {
			System.out.println("Login unsuccessfully!");
			return "admin/adminLogin";
		}

	}

	@RequestMapping(value = "admin/adminForgotPassword", method = RequestMethod.POST)
	public String adminForgotPassword(HttpServletRequest request) {
		String email = request.getParameter("email");
		System.out.println(email);
		return "admin/adminForgotPassword";
	}
	
	

	// Trang dashboard của admin
	@RequestMapping("admin/index")
	public String adminIndex() {
		return "admin/index";
	}
}