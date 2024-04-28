package ptithcm.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

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

import ptithcm.entity.AccountEntity;
import ptithcm.entity.CategoryEntity;
import ptithcm.entity.ContractEntity;
import ptithcm.entity.CustomerEntity;
import ptithcm.entity.EmployeeEntity;
import ptithcm.entity.MaidEntity;
import ptithcm.entity.ServiceEntity;
import ptithcm.entity.ServicePriceEntity;
import ptithcm.entity.RoleEntity;
import ptithcm.service.AccountService;
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
	@RequestMapping(value = "admin/adminProfile", method = RequestMethod.GET)
	public String showAdminProfile(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String adminEmail = (String) session.getAttribute("adminEmail");

		EmployeeEntity employeeInfo = employeeService.getEmployeeByEmail(adminEmail);

		model.addAttribute("employeeInfo", employeeInfo);

//		System.out.println(adminEmail);

		return "admin/adminProfile";
	}

	// Hiển thị trang cập nhật thông tin admin:
	@RequestMapping("admin/adminEditProfile")
	public String showadminEditProfile(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String adminEmail = (String) session.getAttribute("adminEmail");
		model.addAttribute("empEditContent", employeeService.getEmployeeByEmail(adminEmail));
		model.addAttribute("employeeInfo", new EmployeeEntity());

		System.out.println("==> Open edit admin profile session");

		return "admin/adminEditProfile";
	}

	@RequestMapping(value = "admin/adminEditProfile", method = RequestMethod.POST)
	public String editAdminProfile(@ModelAttribute("employeeInfo") EmployeeEntity employeeInfo, BindingResult errors) {
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
			employeeInfo.setId(employeeInfo.getId());
			employeeInfo.setFullName(accountService.standardizeName(employeeInfo.getFullName()));
			employeeInfo.setPhoneNumber(employeeInfo.getPhoneNumber());
			employeeInfo.setAddress(employeeInfo.getAddress());

			AccountEntity account = accountService.getAccountByEmail(employeeInfo.getAccount().getEmail());
			employeeInfo.setAccount(account);

			employeeService.updateEmployee(employeeInfo);
			System.out.println("==> Employee info updated successfully!");

		} catch (Exception e) {
			System.out.println("Error: Employee info updated unsuccessfully!");
		}
		return "admin/index";
	}

	// Hiển thị form chamge password admin:
	@RequestMapping("admin/adminChangePassword")
	public String showAdminChangePassword(Model model) {
		model.addAttribute("adminAcc", new AccountEntity());
		System.out.println("==> Open an admin change password session");
		return "admin/adminChangePassword";
	}
	
	@RequestMapping(value = "admin/adminChangePassword", method = RequestMethod.POST)
	public String adminChangePassword(HttpServletRequest request, @ModelAttribute("employeeAcc") AccountEntity adminAcc,
			BindingResult errors) {

		Boolean isValidPass = Boolean.TRUE;

		HttpSession session = request.getSession();

		String adminEmail = (String) session.getAttribute("adminEmail");
		String newPass = request.getParameter("new-password");
		String reEnterNewPass = request.getParameter("re-enter-new-password");

		if (adminAcc.getPassword().isEmpty()) {
			errors.rejectValue("employeeAcc", "password", "Vui lòng nhập mật khẩu hiện tại!");
			isValidPass = Boolean.FALSE;
		} else if (newPass.isEmpty()) {
			errors.rejectValue("employeeAcc", "password", "Vui lòng nhập mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		} else if (reEnterNewPass.isEmpty()) {
			errors.rejectValue("employeeAcc", "password", "Vui lòng nhập lại mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		}

		if(!accountService.isExistAccount(adminEmail, accountService.getHashPassword(adminAcc.getPassword()))) {
			errors.rejectValue("employeeAcc", "password", "Mật khẩu hiện tại nhập ko đúng, vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		}else if(!newPass.equals(reEnterNewPass)) {
			errors.rejectValue("employeeAcc", "password", "Mật khẩu bạn nhập lại không trùng khớp, vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		}
		
		if(isValidPass) {
			try {
				RoleEntity adminRole = roleService.getRoleById(1);
				if(adminRole != null) {
					adminAcc.setEmail(adminEmail);
					adminAcc.setPassword(accountService.getHashPassword(newPass));
					adminAcc.setRole(adminRole);
					adminAcc.setStatus(true);
				}else
					System.out.println("Error: RoleEntity with RoleId = 1 does not exist!");
				accountService.updateAccount(adminAcc);
				System.out.println("==> Admin account password updated successfully!");
			} catch (Exception e) {
				System.out.println("Error: Admin account password updated unsuccessfully!");
			}
		}else {
			System.out.println("Error: Admin account password updated unsuccessfully!");
			return "redirect:/admin/adminChangePassword.htm";
		}
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

		return "redirect:/admin/customerManagement";
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

		return "redirect:/admin/customerManagement";
	}

	// Hiển thị form xem thông tin khách hàng:
	@RequestMapping("admin/customerDetail/{id}")
	public String showCustomerDetail(Model model, @PathVariable("id") Integer id) {
		CustomerEntity customer = customerService.getCustomerById(id);
		model.addAttribute("customer", customer);

		return "admin/customerDetail";
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
	public String adminLogin(ModelMap model, HttpServletRequest request,
			@ModelAttribute("adminAcc") AccountEntity adminAcc, BindingResult errors) {

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
			session.setAttribute("adminEmail", adminAcc.getEmail());
			EmployeeEntity employee = employeeService.getEmployeeByEmail(adminAcc.getEmail());
			session.setAttribute("employee", employee);

			return "admin/index";
		} else {
			System.out.println("Error: Login unsuccessfully!");
			return "admin/adminLogin";
		}
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

		return "redirect:/admin/maidManagement";
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
		return "redirect:/admin/maidManagement";
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

		return "admin/serviceManagement";
	}

	private void addServicePriceForService(ServiceEntity service) {
		ServicePriceEntity servicePrice = new ServicePriceEntity();

		servicePrice.setPrice(service.getServicePrices().get(0).getPrice());
		servicePrice.setService(service);

		servicePriceService.addServicePrice(servicePrice);
		System.out.println("==> Add new service price successfully!");
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

	// Test sort
	@RequestMapping("admin/maid")
	public String adminMaid() {
		return "admin/maid";
	}
}