package ptithcm.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import ptithcm.bean.Mailer;
import ptithcm.dao.ServiceDAO;
import ptithcm.entity.AccountEntity;
import ptithcm.entity.BookingEntity;
import ptithcm.entity.CategoryEntity;
import ptithcm.entity.ContractEntity;
import ptithcm.entity.CustomerEntity;
import ptithcm.entity.EmployeeEntity;
import ptithcm.entity.MaidEntity;
import ptithcm.entity.ServiceEntity;
import ptithcm.entity.ServicePriceEntity;
import ptithcm.entity.RoleEntity;
import ptithcm.service.AccountService;
import ptithcm.service.BookingService;
import ptithcm.service.CategoryService;
import ptithcm.service.ContractService;
import ptithcm.service.CustomerService;
import ptithcm.service.EmployeeService;
import ptithcm.service.MaidService;
import ptithcm.service.MaidServiceService;
import ptithcm.service.RoleService;
import ptithcm.service.ServicePriceService;

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

	@Autowired
	RoleService roleService;

	@Autowired
	CustomerService customerService;

	@Autowired
	MaidServiceService maidServiceService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ServicePriceService servicePriceService;

	@Autowired
	ContractService contractService;

	@Autowired
	BookingService bookingService;

	@Autowired
	Mailer mailer;

	// Trang đăng nhập cho admin
	@RequestMapping("admin/adminLogin")
	public String showLoginForm(Model model) {
		model.addAttribute("adminAcc", new AccountEntity());
		return "admin/adminLogin";
	}

	// Xử lý đăng nhập cho admin
	@RequestMapping(value = "admin/adminLogin", method = RequestMethod.POST)
	public String adminLogin(ModelMap model, HttpServletRequest request,
			@ModelAttribute("adminAcc") AccountEntity adminAcc, BindingResult errors) {

//				// Kiểm tra thông tin đăng nhập
//				String userName = request.getParameter("userName");
//				String password = request.getParameter("password");
//				if (userName.equals("admin") && password.equals("123")) {
//					// Đăng nhập thành công
//					return "admin/index"; // Chuyển hướng đến trang dashboard của admin
//				} else {
//					// Đăng nhập không thành công
//					request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
//					return "admin/adminLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
//				}

		Boolean permission = Boolean.TRUE;

		if (adminAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "adminAcc", "Xin vui lòng nhập username hoặc email!");
			return "admin/adminLogin";
		} else if (adminAcc.getPassword().isEmpty()) {
			errors.rejectValue("password", "adminAcc", "Xin vui lòng nhập mật khẩu!");
			return "admin/adminLogin";
		}

		if (!accountService.isExistAccount(adminAcc.getEmail(),
				accountService.getHashPassword(adminAcc.getPassword()))) {
			System.out.println(accountService.getHashPassword(adminAcc.getPassword()));
			errors.rejectValue("email", "adminAcc", "Tài khoản không tồn tại");
			errors.rejectValue("password", "adminAcc", "Hoặc mật khẩu bạn nhập không đúng");
			permission = Boolean.FALSE;
		} else if (!accountService.getStatusFromAccount(adminAcc.getEmail())) {
			errors.rejectValue("email", "adminAcc", "Tài khoản của bạn đã bị khóa");
			permission = Boolean.FALSE;
		} else if (accountService.getRoleIdFromAccount(adminAcc.getEmail()) != 1) {
			errors.rejectValue("email", "adminAcc", "Tài khoản của bạn không có quyền truy cập vào trang này");
			permission = Boolean.FALSE;
		}

		if (permission) {
			System.out.println("==> Login successfully!");
			HttpSession session = request.getSession();

			// Tạo adminAccount dùng cho cả session
			RoleEntity adminRole = roleService.getRoleById(1);
			adminAcc.setRole(adminRole);
			adminAcc.setStatus(true);
			session.setAttribute("adminAcc", adminAcc);
			System.out.println("==> Session's memories: 'adminAcc' has been allocated");

			// Tạo employee dùng cho cả session
			EmployeeEntity employee = employeeService.getEmployeeByEmail(adminAcc.getEmail());
			session.setAttribute("employee", employee);
			System.out.println("==> Session's memories: 'employee' has been allocated");

			return "admin/index";
		} else {
			System.out.println("Error: Login unsuccessfully!");
			return "admin/adminLogin";
		}
	}

	// Đăng xuất:
	@RequestMapping("admin/logout")
	public String Logout(HttpServletRequest request, SessionStatus sessionStatus) {
		request.getSession().invalidate(); // Giải phóng vùng nhớ của session
		System.out.println("==> Invalidate the session");

		sessionStatus.setComplete(); // Giải phóng vùng nhớ của các model attribute
		System.out.println("==> Clear model attributes ");

		System.out.println("==> Logout");
		return "redirect:/";
	}

	// Trang quên mật khẩu cho admin:
	@RequestMapping("admin/adminForgotPassword")
	public String showForgotPasswordForm(Model model) {
		model.addAttribute("adminAcc", new AccountEntity());

		return "admin/adminForgotPassword";
	}

	@RequestMapping(value = "admin/adminForgotPassword", method = RequestMethod.POST)
	public String adminForgotPassword(HttpServletRequest request, @ModelAttribute("adminAcc") AccountEntity adminAcc,
			BindingResult errors) {

		Boolean continueVerify = Boolean.TRUE;

		if (adminAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "adminAcc", "Vui lòng nhập email mà bạn thiết lập làm tài khoản!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isValidEmail(adminAcc.getEmail())) {
			errors.rejectValue("email", "adminAcc", "Email mà bạn vừa nhập không hợp lệ, vui lòng nhập lại!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isExistEmail(adminAcc.getEmail())) {
			errors.rejectValue("email", "adminAcc",
					"Email mà bạn vừa nhập không tồn tại trong hệ thống, vui lòng kiểm tra lại!");
			continueVerify = Boolean.FALSE;
		}

		if (continueVerify == Boolean.TRUE) {
			HttpSession session = request.getSession();
			String otp = accountService.generateOTP();
			session.setAttribute("otp", otp);
			session.setAttribute("email", adminAcc.getEmail());
			mailer.sendMailAsync("DichVuQuanLyMaid", adminAcc.getEmail(), "OTP Forgot Password",
					"Mã OTP của bạn là: " + otp);
			return "admin/forgotPasswordOTP";
		} else
			return "admin/adminForgotPassword";
	}

	// Trang nhập OTP quên mật khẩu:
	@RequestMapping("admin/forgotPasswordOTP")
	public String showForgotPasswordOTP() {
		return "admin/forgotPasswordOTP";
	}

	@RequestMapping(value = "admin/forgotPasswordOTP", params = "verify", method = RequestMethod.GET)
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
			return "admin/changeForgotPassword";
		} else {
			model.addAttribute("message", "Mã OTP bạn nhập không đúng vui lòng đúng vui lòng nhập lại!");
			return "admin/ForgotPasswordOTP";
		}
	}

	// Trang nhập đặt lại quên mật khẩu:
	@RequestMapping("admin/changeForgotPassword")
	public String showChangeForgotPassword() {
		return "admin/changeForgotPassword";
	}

	@RequestMapping(value = "admin/changeForgotPassword", method = RequestMethod.POST)
	public String changeForgotPassword(HttpServletRequest request, Model model, SessionStatus sessionStatus) {

		Boolean isValidPass = Boolean.TRUE;
		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("email");
		AccountEntity adminAcc = accountService.getAccountByEmail(email);
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
			adminAcc.setPassword(accountService.getHashPassword(newPass));
			accountService.updateAccount(adminAcc);
			System.out.println("==> Admin account password updated successfully!");

			request.getSession().invalidate();
			System.out.println("==> Invalidate the session");

			sessionStatus.setComplete();
			System.out.println("==> Clear model attributes ");

			return "redirect:/";
		} else {
			System.out.println("Error: Admin account password updated unsuccessfully!");
			return "admin/changeForgotPassword";
		}
	}

	// Hiển thị trang cá nhân admin:
	@RequestMapping(value = "admin/adminProfile", method = RequestMethod.GET)
	public String showAdminProfile(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		EmployeeEntity employeeInfo = (EmployeeEntity) session.getAttribute("employee");
		model.addAttribute("employeeInfo", employeeInfo);

		return "admin/adminProfile";
	}

	// Hiển thị trang cập nhật thông tin admin:
	@RequestMapping("admin/adminEditProfile")
	public String showadminEditProfile(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		EmployeeEntity employee = (EmployeeEntity) session.getAttribute("employee");
		model.addAttribute("empEditContent", employee);
		model.addAttribute("employeeInfo", new EmployeeEntity());

		System.out.println("==> Open edit admin profile session");

		return "admin/adminEditProfile";
	}

	@RequestMapping(value = "admin/adminEditProfile", method = RequestMethod.POST)
	public String editAdminProfile(HttpServletRequest request,
			@ModelAttribute("employeeInfo") EmployeeEntity employeeInfo, BindingResult errors) {
		HttpSession session = request.getSession();

		EmployeeEntity employee = (EmployeeEntity) session.getAttribute("employee");

		Boolean isValidInfo = Boolean.TRUE;

		if (employeeInfo.getFullName().isEmpty()) {
			errors.rejectValue("fullName", "employeeInfo", "Tên người dùng không được để trống!");
			isValidInfo = Boolean.FALSE;
		} else if (employeeInfo.getPhoneNumber().isEmpty()) {
			errors.rejectValue("phoneNumber", "employeeInfo", "Số điện thoại không được để trống!");
			isValidInfo = Boolean.FALSE;
		}

		if (accountService.standardize(employeeInfo.getFullName()).length() > 30) {
			errors.rejectValue("fullName", "employeeInfo", "Tên người dùng không được dài quá 30 ký tự!");
			isValidInfo = Boolean.FALSE;
		} else if (!accountService.isValidPhoneNumber(employeeInfo.getPhoneNumber())) {
			errors.rejectValue("phoneNumber", "employeeInfo", "Số điện thoại nhập không hợp lệ, vui lòng nhập lại!");
			isValidInfo = Boolean.FALSE;
		}

		if (!isValidInfo) {
			System.out.println("Error: Employee info updated unsuccessfully!");
			return "redirect:/admin/adminEditProfile.htm";
		}

		try {
			employee.setFullName(accountService.standardizeName(employeeInfo.getFullName()));
			employee.setPhoneNumber(employeeInfo.getPhoneNumber());
			employee.setAddress(employeeInfo.getAddress());

			employeeService.updateEmployee(employee);
			System.out.println("==> Employee info updated successfully!");

		} catch (Exception e) {
			System.out.println("Error: Employee info updated unsuccessfully!");
		}
		return "admin/index";
	}

	// Hiển thị form chamge password admin:
	@RequestMapping("admin/adminChangePassword")
	public String showAdminChangePassword(Model model) {
		model.addAttribute("adminPass", new AccountEntity());
		System.out.println("==> Open an admin change password session");
		return "admin/adminChangePassword";
	}

	@RequestMapping(value = "admin/adminChangePassword", method = RequestMethod.POST)
	public String adminChangePassword(HttpServletRequest request, @ModelAttribute("adminPass") AccountEntity adminPass,
			BindingResult errors) {

		Boolean isValidPass = Boolean.TRUE;

		HttpSession session = request.getSession();
		AccountEntity adminAcc = (AccountEntity) session.getAttribute("adminAcc");
		String newPass = request.getParameter("new-password");
		String reEnterNewPass = request.getParameter("re-enter-new-password");

		System.out.println(adminAcc.getRole().getRoleName());

		if (adminPass.getPassword().isEmpty()) {
			errors.rejectValue("adminPass", "password", "Vui lòng nhập mật khẩu hiện tại!");
			isValidPass = Boolean.FALSE;
		} else if (newPass.isEmpty()) {
			errors.rejectValue("adminPass", "password", "Vui lòng nhập mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		} else if (reEnterNewPass.isEmpty()) {
			errors.rejectValue("adminPass", "password", "Vui lòng nhập lại mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		}

		if (!accountService.isExistAccount(adminAcc.getEmail(),
				accountService.getHashPassword(adminPass.getPassword()))) {
			errors.rejectValue("adminPass", "password", "Mật khẩu hiện tại nhập ko đúng, vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		} else if (!newPass.equals(reEnterNewPass)) {
			errors.rejectValue("adminPass", "password", "Mật khẩu bạn nhập lại không trùng khớp, vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		}

		if (isValidPass) {
			try {
				adminAcc.setPassword(accountService.getHashPassword(newPass));
				accountService.updateAccount(adminAcc);
				System.out.println("==> Admin account password updated successfully!");
			} catch (Exception e) {
				System.out.println("Error: Admin account password updated unsuccessfully!");
			}
		} else {
			System.out.println("Error: Admin account password updated unsuccessfully!");
			return "redirect:/admin/adminChangePassword.htm";
		}
		return "admin/index";
	}

	// Trang dashboard của admin
	@RequestMapping("admin/index")
	public String adminIndex() {
		return "admin/index";
	}

	// Hiển thị danh sách người giúp việc:
	@RequestMapping("admin/maidManagement")
	public String showMaidList(Model model) {
		List<MaidEntity> maidList = maidService.getListMaid();
		
		model.addAttribute("maidList", maidList);

		return "admin/maidManagement";
	}

	// Hiển thị form thêm người giúp việc:
	@RequestMapping(value = "admin/addMaid", method = RequestMethod.GET)
	public String showAddMaidForm(Model model) {
		model.addAttribute("maid", new MaidEntity());
		System.out.println("==> Open an add maid session");
		return "admin/addMaid";
	}

	@RequestMapping(value = "admin/edit/{id}", method = RequestMethod.GET)
	public String editMaid(HttpServletRequest request, ModelMap model, @PathVariable("id") Integer id) {
		System.out.println(id);
		MaidEntity maid = maidService.getMaidById(id);

		HttpSession session = request.getSession();
		session.setAttribute("maid", maid);

		return "admin/addMaid";
	}

	// Hiển thị form update thông tin người giúp việc:
	@RequestMapping("admin/updateMaid")
	public String updateDetailMaidForm() {
		return "admin/updateMaid";
	}

	// Hiển thị danh sách khách hàng:
	@RequestMapping("admin/customerManagement")
	public String showCustomerList(Model model) {
		List<CustomerEntity> customerList = customerService.getListCustomer();
		model.addAttribute("customerList", customerList);

		return "admin/customerManagement";
	}

	@RequestMapping("admin/blockCustomer/{id}")
	public String blockCustomerAccount(@PathVariable("id") Integer id) {
		CustomerEntity customer = customerService.getCustomerById(id);

		if (customer != null) {
			customer.getAccount().setStatus(false);
			customerService.updateCustomer(customer);
			System.out.println("==> Set maid account status to 'false' successfully!");
		} else
			System.out.println("Error: Set maid account status to 'false' unsuccessfully!");

		return "redirect:/admin/customerManagement.htm";
	}

	@RequestMapping("admin/activeCustomer/{id}")
	public String activeCustomerAccount(@PathVariable("id") Integer id) {
		CustomerEntity customer = customerService.getCustomerById(id);

		if (customer != null) {
			customer.getAccount().setStatus(true);
			customerService.updateCustomer(customer);
			System.out.println("==> Set maid account status to 'true' successfully!");
		} else
			System.out.println("Error: Set maid account status to 'true' unsuccessfully!");

		return "redirect:/admin/customerManagement.htm";
	}

	// Hiển thị form xem thông tin khách hàng:
	@RequestMapping("admin/customerDetail/{id}")
	public String showCustomerDetail(Model model, @PathVariable("id") Integer id) {
		CustomerEntity customer = customerService.getCustomerById(id);
		model.addAttribute("customer", customer);

		return "admin/customerDetail";
	}

	// Hiển thị danh sách category:
	@RequestMapping("admin/categoryManagement")
	public String showCategoryList(Model model) {
		List<CategoryEntity> categoryList = categoryService.getListCategory();
		model.addAttribute("categoryList", categoryList);

		return "admin/categoryManagement";
	}

	// Hiển thị thêm add category:
	@RequestMapping("admin/addCategory")
	public String showAddCategoryForm(Model model) {
		model.addAttribute("category", new CategoryEntity());
		System.out.println("==> Open add category session");

		return "admin/addCategory";
	}

	@RequestMapping(value = "admin/addCategory", method = RequestMethod.POST)
	public String addCategoryForm(@ModelAttribute("category") CategoryEntity category, BindingResult errors) {
		Boolean isValidCategory = Boolean.TRUE;

		if (category.getName().isEmpty()) {
			errors.rejectValue("name", "category", "Tên danh mục không được để trống!");
			isValidCategory = Boolean.FALSE;
		}
		if (accountService.standardize(category.getName()).length() >= 50) {
			errors.rejectValue("name", "category", "Tên danh mục không đc vượt quá 50 ký tự!");
			isValidCategory = Boolean.FALSE;
		}

		if (isValidCategory) {
			try {
				category.setName(accountService.standardize(category.getName()));
				category.setDescription(category.getDescription());
				categoryService.addCategory(category);
				System.out.println("==> New category added successfully!");
				return "redirect:/admin/categoryManagement.htm";
			} catch (Exception e) {
				System.out.println("Error: New category added unsuccessfully!");
				return "redirect:/admin/addCategory.htm";
			}
		} else {
			System.out.println("Error: New category added unsuccessfully!");
			return "redirect:/admin/addCategory.htm";
		}
	}

	// Hiển thị categoryDetail:
	@RequestMapping("admin/categoryDetail")
	public String showCategoryDetail() {
		return "admin/categoryDetail";
	}

	// Hiển thị form cập nhật category:
	@RequestMapping("admin/updateCategory")
	public String showUpdateCategoryForm() {
		return "admin/updateCategory";
	}

	// Hiển thị danh sách dịch vụ:
	@RequestMapping("admin/serviceManagement")
	public String showServiceList(Model model) {
		List<ServiceEntity> serviceList = maidServiceService.getListService();
		model.addAttribute("serviceList", serviceList);

		return "admin/serviceManagement";
	}

	// Hiển thị thông tin chi tiết dịch vụ:
	@RequestMapping("admin/serviceDetail")
	public String showServiceDetail() {
		return "admin/serviceDetail";
	}

	// Hiển thị form thêm dịch vụ:
	@RequestMapping(value = "admin/addService", method = RequestMethod.GET)
	public String showAddServiceForm(Model model) {
		model.addAttribute("service", new ServiceEntity());
		List<CategoryEntity> categories = categoryService.getListCategory();
		model.addAttribute("categories", categories);
		System.out.println("==> Open an add service session");

		return "admin/addService";
	}

	@RequestMapping("admin/blockService/{id}")
	public String blockService(@PathVariable("id") Integer id) {
		ServiceEntity service = maidServiceService.getServiceById(id);

		if (service != null) {
			service.setStatus(false);
			System.out.println("==> Set service status to 'fasle' successfully!");
		} else {
			System.out.println("Error: Set service status to 'fasle' unsuccessfully!");
		}

		return "redirect:/admin/serviceManagement.htm";
	}

	@RequestMapping("admin/activeService/{id}")
	public String activeService(@PathVariable("id") Integer id) {
		ServiceEntity service = maidServiceService.getServiceById(id);

		if (service != null) {
			service.setStatus(true);
			System.out.println("==> Set service status to 'true' successfully!");
		} else {
			System.out.println("Error: Set service status to 'true' unsuccessfully!");
		}

		return "redirect:/admin/serviceManagement.htm";
	}

	// Hiển thị form cập nhật dịch vụ:
	@RequestMapping("admin/updateService")
	public String showUpdateServiceForm() {
		return "admin/updateService";
	}

	// Hiển thị danh sách đặt lịch thuê:
	@RequestMapping("admin/bookingManagement")
	public String showBookingList(Model model) {
		List<BookingEntity> bookingList = bookingService.getListBooking();
		model.addAttribute("bookingList", bookingList);

		return "admin/bookingManagement";
	}

	// Hiển thị danh sách maid để chọn:
	@RequestMapping("admin/bookingMaidList")
	public String showBookingMaidList() {
		return "admin/bookingMaidList";
	}

	// Hiển thị thông tin đặt lịch thuê:
	@RequestMapping("admin/bookingDetail")
	public String showBookingDetail() {
		return "admin/bookingDetail";
	}

	// Hiển thị danh sách maid để chọn:
	@RequestMapping("admin/bookingMaidChecked")
	public String showBookingMaidChecked() {
		return "admin/bookingMaidChecked";
	}

	// Hiển thị danh sách hợp đồng:
	@RequestMapping("admin/contractManagement")
	public String showContractManagement(Model model) {
		List<ContractEntity> contractList = contractService.getListContract();
		model.addAttribute("contractList", contractList);

		return "admin/contractManagement";
	}

	// Thêm thông tin hợp đồng:
	@RequestMapping("admin/addContract")
	public String showAddContractForm(Model model) throws ParseException {
		ContractEntity contract = new ContractEntity();
		model.addAttribute("contract", contract);
		
		System.out.println("==> Open an add contract session!");

		return "admin/addContract";
	}

	public Date getDateNow() {
		Calendar calendar = Calendar.getInstance();

		// Đặt giờ, phút, giây, millisecond về 0
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		calendar.set(Calendar.MILLISECOND, 0);

		Date now = calendar.getTime();
		return now;
	}

	@RequestMapping(value = "admin/proccessContract", method = RequestMethod.POST)
	public String proccessContract(HttpServletRequest request, Model model,
			@ModelAttribute("contract") ContractEntity contract, BindingResult errors) throws ParseException {
		Boolean isValidContract = Boolean.TRUE;
		Date currentDate = getDateNow();

		if (contract.getCustomer().getId() == null) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("customer.id", "contract", "Id khách hàng không được để trống!");
		} else if (contract.getMaid().getId() == null) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("maid.id", "contract", "Id người giúp việc không được để trống!");
		} else if (contract.getCreateAt() == null) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("createAt", "contract", "Ngày tạo hợp đồng không được để trống!");
		} else if (contract.getStartAt() == null) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("startAt", "contract", "Ngày có hiệu lực không được để trống!");
		} else if (contract.getEndAt() == null) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("endAt", "contract", "Ngày hết hạn không được để trống!");
		} else if (contract.getStartAt().before(currentDate)) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("startAt", "contract", "Ngày hợp đồng có hiệu lực không hợp lệ!");
		} else if (contract.getEndAt().before(currentDate)) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("endAt", "contract", "Ngày có hết hạn hợp đồng không hợp lệ!");
		} else if (contract.getStartAt().after(contract.getEndAt())
				|| contract.getStartAt().equals(contract.getEndAt())) {
			isValidContract = Boolean.FALSE;
			errors.rejectValue("startAt", "contract", "Ngày hợp đồng có hiệu lực phải bé hơn ngày hết hạn!");
		}

		if (isValidContract) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String formattedCurrDate = dateFormat.format(currentDate);
			String formattedCreateAt = dateFormat.format(contract.getCreateAt());
			String formattedStartAt = dateFormat.format(contract.getStartAt());
			String formattedEndAt = dateFormat.format(contract.getEndAt());

			ContractEntity contract_t = contractService.getContractBy(contract.getCustomer().getId(),
					contract.getMaid().getId(), dateFormat.parse(formattedCreateAt));

			if (contract_t == null) { // TH: Hợp đồng nhập là 1 hợp đồng mới

				Boolean isValidNewContract = Boolean.TRUE;
				CustomerEntity customer = customerService.getCustomerById(contract.getCustomer().getId());
				MaidEntity maid = maidService.getMaidById(contract.getMaid().getId());

				if (contract.getCreateAt().before(currentDate)) {
//					System.out.println(contract.getCreateAt());
//					System.out.println(currentDate);
					isValidNewContract = Boolean.FALSE;
					errors.rejectValue("createAt", "contract", "Ngày tạo hợp đồng không hợp lệ!");
				} else if (customer == null) {
					isValidNewContract = Boolean.FALSE;
					errors.rejectValue("customer.id", "contract", "Id khách hàng không tồn tại!");
				} else if (maid == null) {
					isValidNewContract = Boolean.FALSE;
					errors.rejectValue("maid.id", "contract", "Id người giúp việc không tồn tại!");
				} else if (maid.getEmploymentType() == Boolean.TRUE) {
					isValidNewContract = Boolean.FALSE;
					errors.rejectValue("maid.id", "contract", "Loại người giúp việc phải là Fulltime!");
				} else if (maidService.isAvalaiblePartTimeMaid(maid, dateFormat.parse(formattedCurrDate))) {
					isValidNewContract = Boolean.FALSE;
					errors.rejectValue("maid.id", "contract", "Người giúp việc này hiện tại đang bận hoặc không khả dụng!");
				}

				if (isValidNewContract) {
					HttpSession session = request.getSession();
					EmployeeEntity employee = (EmployeeEntity) session.getAttribute("employee");

					contract.setCustomer(customer);
					contract.setMaid(maid);
					contract.setDescription(contract.getDescription());
					contract.setCreateAt(dateFormat.parse(formattedCreateAt));
					contract.setUpdateAt(dateFormat.parse(formattedCurrDate));
					contract.setStartAt(dateFormat.parse(formattedStartAt));
					contract.setEndAt(dateFormat.parse(formattedEndAt));
					contract.setStatus(null);
					contract.setEmployee(employee);

					contractService.createContract(contract);
					System.out.println("==> Contract created successfully at " + new Date() + '!');
					return "redirect:/admin/contractManagement.htm";
				} else {
					System.out.println("Error: Contract created unsuccessfuly!");
					return "admin/addContract";
				}
			} else { // TH: Hợp đồng đã tồn tại

				if (contract_t.getStatus() == Boolean.TRUE || contract_t.getStatus() == null) { // Nếu hợp đồng còn hạn hoặc chưa có hiệu lực
					System.out.println(contract_t.getId());
					contract_t.setStartAt(dateFormat.parse(formattedStartAt));
					contract_t.setEndAt(dateFormat.parse(formattedEndAt));
					contract_t.setUpdateAt(dateFormat.parse(formattedCurrDate));

					contractService.renewContract(contract_t);
					System.out.println("==> Contract renewed successfully at " + new Date() + '!');
					return "redirect:/admin/contractManagement.htm";
				} else { // Nếu hợp đồng hết hạn
					model.addAttribute("message", "Hợp đồng mà bạn chọn đã hết hạn!");
					System.out.println("Error: Cannot renew an this contract!");
					return "admin/addContract";
				}
			}

		} else {
			System.out.println("Error: Contract created unsuccessfully!");
		}

		return "admin/addContract";
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

	// Xử lý thêm người giúp việc
	@RequestMapping(value = "admin/addMaid", params = "add", method = RequestMethod.POST)
	public String addMaid(HttpServletRequest request, @ModelAttribute("maid") MaidEntity maid, BindingResult errors)
			throws ParseException {

		Boolean isValidMaid = Boolean.TRUE;

		if (maid.getAccount().getEmail().isEmpty()) {
			errors.rejectValue("account.email", "maid", "Tài khoản email không được để trống");
			isValidMaid = Boolean.FALSE;
		} else if (!accountService.isValidEmail(maid.getAccount().getEmail())) {
			errors.rejectValue("account.email", "maid", "Tài khoản email nhập sai định dạng");
			isValidMaid = Boolean.FALSE;
		} else if (accountService.isExistEmail(maid.getAccount().getEmail())) {
			errors.rejectValue("account.email", "maid",
					"Tài khoản email đã tồn tại trên hệ thống vui lòng chọn 1 email khác");
			isValidMaid = Boolean.FALSE;
		}

		if (maid.getFullName().isEmpty()) {
			errors.rejectValue("fullName", "maid", "Tên người giúp việc không được để trống");
			isValidMaid = Boolean.FALSE;
		} else if (accountService.standardize(maid.getFullName()).length() > 30) {
			errors.rejectValue("fullName", "maid", "Tên người giúp việc không được dài quá 30 ký tự");
			isValidMaid = Boolean.FALSE;
		}

		if (maid.getSalary().isNaN()) {
			errors.rejectValue("salary", "maid", "Giá trị nhập không hợp lệ");
			isValidMaid = Boolean.FALSE;
		}

		if (!maid.getPhoneNumber().isEmpty() && accountService.isValidPhoneNumber(maid.getPhoneNumber())) {
			errors.rejectValue("phoneNumber", "maid", "Số điện thoại bạn nhập không đúng định dạng");
			isValidMaid = Boolean.FALSE;
		}

		if (isValidMaid == Boolean.FALSE) {
			System.out.println("Error: Add maid unsuccessfully! Reason: Maid info is not valid!!");
			return "admin/addMaid";
		}

		RoleEntity maidRole = roleService.getRoleById(2);
		if (maidRole != null) {
			// Tạo 1 Maid Account mới với email vừa nhập mật khẩu mặc định là 123
			AccountEntity newMaidAcc = new AccountEntity();

			newMaidAcc.setEmail(maid.getAccount().getEmail());
			newMaidAcc.setPassword(accountService.getHashPassword("123"));
			newMaidAcc.setRole(maidRole);
			newMaidAcc.setStatus(false);

			accountService.addAccount(newMaidAcc);
			maid.setAccount(newMaidAcc);
			System.out.println("==> Add new maid account successfully!");
		} else {
			System.out.println("Error: Add new maid account unsuccessfully!"
					+ " Reason: RoleEntity with RoleId = 2 does not exist");
		}

		try {
			maid.setFullName(accountService.standardizeName(maid.getFullName()));
			maid.setAddress(maid.getAddress());
			maid.setSalary(maid.getSalary());
			maid.setEmploymentType(maid.getEmploymentType());
			maid.setPhoneNumber(maid.getPhoneNumber());
			maid.setExperience(maid.getExperience());

			HttpSession session = request.getSession();
			EmployeeEntity employee = (EmployeeEntity) session.getAttribute("employee");
			maid.setEmployee(employee);

			maidService.addMaid(maid);
			System.out.println("==> Add maid successfully!");
		} catch (Exception e) {
			System.out.println("Error: Add maid unsuccessfully!");
		}

		return "admin/addMaid";
	}

	@RequestMapping("admin/blockMaid/{id}")
	public String blockMaidAccount(@PathVariable("id") Integer id) {
		MaidEntity maid = maidService.getMaidById(id);

		if (maid != null) {
			maid.getAccount().setStatus(false);
			maidService.updateMaid(maid);
			System.out.println("==> Set maid account status to 'false' successfully!");
		} else
			System.out.println("Error: Set maid account status to 'false' unsuccessfully!");

		return "redirect:/admin/maidManagement.htm";
	}

	@RequestMapping("admin/activeMaid/{id}")
	public String activeMaidAccount(@PathVariable("id") Integer id) {
		MaidEntity maid = maidService.getMaidById(id);

		if (maid != null) {
			maid.getAccount().setStatus(true);
			maidService.updateMaid(maid);
			System.out.println("==> Set maid account status to 'true' successfully!");
		} else
			System.out.println("Error: Set maid account status to 'true' unsuccessfully!");

		// Redirect the user back to the maidManagement page
		return "redirect:/admin/maidManagement.htm";
	}

	// Hiển thị form thông tin người giúp việc:
	@RequestMapping("admin/maidDetail/{id}")
	public String showDetailMaidForm(Model model, @PathVariable("id") Integer id) {
		MaidEntity maid = maidService.getMaidById(id);
		model.addAttribute("maid", maid);
		return "admin/maidDetail";
	}

	@RequestMapping(value = "admin/addService", params = "add", method = RequestMethod.POST)
	public String addService(@ModelAttribute("service") ServiceEntity service, BindingResult errors)
			throws ParseException {

		Boolean isValidService = Boolean.TRUE;

		if (service.getName().isEmpty()) {
			errors.rejectValue("name", "service", "Tên dịch vụ không được để trống");
			isValidService = Boolean.FALSE;
		}

		if (service.getServicePrices().get(0).getPrice() <= 0) {
			errors.rejectValue("servicePrices.price", "service", "Giá tiền dịch vụ không thể <= 0");
			isValidService = Boolean.FALSE;
		}

		if (service.getMaidQuantity() <= 0) {
			errors.rejectValue("maidQuantity", "service", "Số lượng người giúp việc không thể <= 0");
			isValidService = Boolean.FALSE;
		}

		if (service.getTime() <= 0) {
			errors.rejectValue("time", "service", "Thời gian của dịch vụ không thể <= 0");
			isValidService = Boolean.FALSE;
		}

		if (isValidService == Boolean.FALSE) {
			System.out.println("Error: Add new service unsuccessfully! Reason: Service info is not valid!");
			return "admin/addService";
		}
		try {
			service.setName(service.getName());
			service.setMaidQuantity(service.getMaidQuantity());
			service.setStatus(service.getStatus());
			service.setCategory(categoryService.getCategoryById(service.getCategory().getId()));
			service.setTime(service.getTime());
			service.setDescription(service.getDescription());

			maidServiceService.addService(service);
			System.out.println("==> Add new service successfully!");

			addServicePriceForService(service);
		} catch (Exception e) {
			System.out.println("Error: Add new service unsuccessfully!");
		}

		return "redirect:/admin/serviceManagement.htm";
	}

	private void addServicePriceForService(ServiceEntity service) {
		ServicePriceEntity servicePrice = new ServicePriceEntity();

		servicePrice.setPrice(service.getServicePrices().get(0).getPrice());
		servicePrice.setService(service);

		servicePriceService.addServicePrice(servicePrice);
		System.out.println("==> Add new service price successfully!");
	}

	// Test sort
	@RequestMapping("admin/maid")
	public String adminMaid() {
		return "admin/maid";
	}
}