package ptithcm.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.hibernate.type.descriptor.java.LocalDateTimeJavaDescriptor;
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
import org.springframework.web.bind.support.SessionStatus;

import ptithcm.bean.Mailer;
import ptithcm.dao.ContractDAO;
import ptithcm.dao.ServiceDAO;
import ptithcm.entity.AccountEntity;
import ptithcm.entity.BillEntity;
import ptithcm.entity.BookingDetailEntity;
import ptithcm.entity.BookingEntity;
import ptithcm.entity.CategoryEntity;
import ptithcm.entity.ContractEntity;
import ptithcm.entity.CustomerEntity;
import ptithcm.entity.MaidEntity;
import ptithcm.entity.RoleEntity;
import ptithcm.entity.ServiceEntity;
import ptithcm.service.AccountService;
import ptithcm.service.BillService;
import ptithcm.service.BookingDetailService;
import ptithcm.service.BookingService;
import ptithcm.service.CategoryService;
import ptithcm.service.ContractService;
import ptithcm.service.CustomerService;
import ptithcm.service.MaidService;
import ptithcm.service.MaidServiceService;
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

	@Autowired
	CategoryService categoryService;

	@Autowired
	MaidServiceService maidServiceService;

	@Autowired
	BookingService bookingService;

	@Autowired
	ContractService contractService;

	@Autowired
	MaidService maidService;

	@Autowired
	BookingDetailService bookingDetailService;

	@Autowired
	BillService billService;

	// Trang đăng nhập cho customer
	@RequestMapping("customer/customerLogin")
	public String showCustomerLoginForm(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		return "customer/customerLogin";
	}

	// Xử lý đăng nhập cho customer
	@RequestMapping(value = "customer/customerLogin", method = RequestMethod.POST)
	public String customerLogin(ModelMap model, HttpServletRequest request,
			@ModelAttribute("customerAcc") AccountEntity customerAcc, BindingResult errors) {

//				// Kiểm tra thông tin đăng nhập
//				String userName = request.getParameter("userName");
//				String password = request.getParameter("password");
//				if (userName.equals("customer") && password.equals("123")) {
//					// Đăng nhập thành công
//					return "main"; // Chuyển hướng đến trang dashboard của customer
//				} else {
//					// Đăng nhập không thành công
//					request.setAttribute("message", "Tên đăng nhập hoặc mật khẩu không đúng hoặc không tồn tại");
//					return "customer/customerLogin"; // Hiển thị lại trang đăng nhập với thông báo lỗi
//				}
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
			HttpSession session = request.getSession();

			// Tạo customerAcc dùng cho cả session
			RoleEntity customerRole = roleService.getRoleById(3);
			customerAcc.setRole(customerRole);
			customerAcc.setStatus(true);
			session.setAttribute("Account", customerAcc);
			System.out.println("==> Session's memories: 'customerAcc' has been allocated");

			// Tạo Customer dùng cho cả session
			CustomerEntity customer = customerService.getCustomerByEmail(customerAcc.getEmail());
			session.setAttribute("customer", customer);
			System.out.println("==> Session's memories: 'customer' has been allocated");

			return "redirect:/customer/index.htm";
		} else {
			System.out.println("Login unsuccessfully!");
			return "customer/customerLogin";
		}

	}

	// Đăng xuất:
	@RequestMapping("customer/serviceList/logout")
	public String Logout(HttpServletRequest request, SessionStatus sessionStatus) {
		request.getSession().invalidate(); // Giải phóng vùng nhớ của session
		System.out.println("==> Invalidate the session");

		sessionStatus.setComplete(); // Giải phóng vùng nhớ của các model attribute
		System.out.println("==> Clear model attributes ");

		System.out.println("==> Logout");
		return "redirect:/";
	}

	// Trang quên mật khẩu cho customer:
	@RequestMapping("customer/customerForgotPassword")
	public String showCustomerForgotPasswordForm(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());

		return "customer/customerForgotPassword";
	}

	@RequestMapping(value = "customer/customerForgotPassword", method = RequestMethod.POST)
	public String customerForgotPassword(HttpServletRequest request,
			@ModelAttribute("customerAcc") AccountEntity customerAcc, BindingResult errors) {

		Boolean continueVerify = Boolean.TRUE;

		if (customerAcc.getEmail().isEmpty()) {
			errors.rejectValue("email", "customerAcc", "Vui lòng nhập email mà bạn thiết lập làm tài khoản!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isValidEmail(customerAcc.getEmail())) {
			errors.rejectValue("email", "customerAcc", "Email mà bạn vừa nhập không hợp lệ, vui lòng nhập lại!");
			continueVerify = Boolean.FALSE;
		} else if (!accountService.isExistEmail(customerAcc.getEmail())) {
			errors.rejectValue("email", "customerAcc",
					"Email mà bạn vừa nhập không tồn tại trong hệ thống, vui lòng kiểm tra lại!");
			continueVerify = Boolean.FALSE;
		}

		if (continueVerify) {
			HttpSession session = request.getSession();
			String otp = accountService.generateOTP();
			session.setAttribute("otp", otp);
			session.setAttribute("email", customerAcc.getEmail());
			mailer.sendMailAsync("DichVuQuanLyMaid", customerAcc.getEmail(), "OTP Forgot Password",
					"Mã OTP của bạn là: " + otp);
			return "customer/forgotPasswordOTP";
		} else {
			return "customer/customerForgotPassword";
		}

	}

	// Trang nhập OTP quên mật khẩu:
	@RequestMapping("customer/forgotPasswordOTP")
	public String showForgotPasswordOTP() {
		return "customer/forgotPasswordOTP";
	}

	@RequestMapping(value = "customer/forgotPasswordOTP", params = "verify", method = RequestMethod.GET)
	public String verifyForgotPasswordOTP(HttpServletRequest request, Model model) {
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
			return "customer/changeForgotPassword";
		} else {
			model.addAttribute("message", "Mã OTP bạn nhập không đúng vui lòng đúng vui lòng nhập lại!");
			return "customer/forgotPasswordOTP";
		}
	}

	// Trang nhập đặt lại quên mật khẩu:
	@RequestMapping("customer/changeForgotPassword")
	public String showChangeForgotPassword() {
		return "customer/changeForgotPassword";
	}

	@RequestMapping(value = "customer/changeForgotPassword", method = RequestMethod.POST)
	public String changeForgotPassword(HttpServletRequest request, Model model, SessionStatus sessionStatus) {

		Boolean isValidPass = Boolean.TRUE;
		HttpSession session = request.getSession();

		String email = (String) session.getAttribute("email");
		AccountEntity customerAcc = accountService.getAccountByEmail(email);
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
			customerAcc.setPassword(accountService.getHashPassword(newPass));
			accountService.updateAccount(customerAcc);
			System.out.println("==> Admin account password updated successfully!");

			request.getSession().invalidate();
			System.out.println("==> Invalidate the session");

			sessionStatus.setComplete();
			System.out.println("==> Clear model attributes ");

			return "redirect:/";
		} else {
			System.out.println("Error: Admin account password updated unsuccessfully!");
			return "customer/changeForgotPassword";
		}
	}

	// Hiển thị trang thông tin cá nhân của customer:
	@RequestMapping("customer/customerProfile")
	public String showCustomerProfile() {

		return "customer/customerProfile";
	}

	// Hiển thị form cập nhật thông tin cho customer:
	@RequestMapping("customer/updateCustomer")
	public String showCustomerUpdateProfile(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		model.addAttribute("cusEditContent", customer);
		model.addAttribute("customerInfo", new CustomerEntity());

		System.out.println("==> Open update customer profile session");

		return "customer/updateCustomer";
	}
	
	@RequestMapping(value = "customer/updateInfo.htm", method = RequestMethod.POST)
	public String updateCustomerProfile(HttpServletRequest request,
			@ModelAttribute("customerInfo") CustomerEntity customerInfo, BindingResult errors) {
		HttpSession session = request.getSession();
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		Boolean isValidInfo = Boolean.TRUE;
		
		if (customerInfo.getFullName().isEmpty()) {
			errors.rejectValue("fullName", "customerInfo", "Tên người dùng không được để trống!");
			isValidInfo = Boolean.FALSE;
		} else if (customerInfo.getPhoneNumber().isEmpty()) {
			errors.rejectValue("phoneNumber", "customerInfo", "Số điện thoại không được để trống!");
			isValidInfo = Boolean.FALSE;
		}

		if (accountService.standardize(customerInfo.getFullName()).length() > 30) {
			errors.rejectValue("fullName", "customerInfo", "Tên người dùng không được dài quá 30 ký tự!");
			isValidInfo = Boolean.FALSE;
		} else if (!accountService.isValidPhoneNumber(customerInfo.getPhoneNumber())) {
			errors.rejectValue("phoneNumber", "customerInfo", "Số điện thoại nhập không hợp lệ, vui lòng nhập lại!");
			isValidInfo = Boolean.FALSE;
		}
		
		if(isValidInfo) {
			try {
				customer.setFullName(accountService.standardizeName(customerInfo.getFullName()));
				customer.setPhoneNumber(customerInfo.getPhoneNumber());
				customer.setAddress(customerInfo.getAddress());
				
				customerService.updateCustomer(customer);
				System.out.println("==> Customer info updated successfully!");
			}catch (Exception e) {
				System.out.println("Error: Customer info updated unsuccessfully!");
			}
		}else {
			System.out.println("Error: Customer info updated unsuccessfully!");
			return "redirect:/customer/updateInfo.htm";
		}
		
		return "customer/index";
	}

	// Hiển thị form change password:
	@RequestMapping("customer/customerChangePassword")
	public String showCustomerChangePassword(Model model) {
		System.out.println("==> Open change customer password session");

		model.addAttribute("customerPass", new AccountEntity());

		return "customer/customerChangePassword";

	}

	@RequestMapping(value = "customer/customerChangePassword.htm", method = RequestMethod.POST)
	public String customerChangePassword(HttpServletRequest request,
			@ModelAttribute("customerPass") AccountEntity customerPass, BindingResult errors) {
		Boolean isValidPass = Boolean.TRUE;

		HttpSession session = request.getSession();
		AccountEntity Account = (AccountEntity) session.getAttribute("Account");
		String newPass = request.getParameter("new-password");
		String reEnterNewPass = request.getParameter("re-enter-new-password");

		if (customerPass.getPassword().isEmpty()) {
			errors.rejectValue("adminPass", "password", "Vui lòng nhập mật khẩu hiện tại!");
			isValidPass = Boolean.FALSE;
		} else if (newPass.isEmpty()) {
			errors.rejectValue("adminPass", "new-password", "Vui lòng nhập mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		} else if (reEnterNewPass.isEmpty()) {
			errors.rejectValue("adminPass", "re-enter-new-password", "Vui lòng nhập lại mật khẩu mới!");
			isValidPass = Boolean.FALSE;
		}

		if (!accountService.isExistAccount(Account.getEmail(),
				accountService.getHashPassword(customerPass.getPassword()))) {
			errors.rejectValue("customerPass", "password", "Mật khẩu hiện tại nhập ko đúng, vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		} else if (!newPass.equals(reEnterNewPass)) {
			errors.rejectValue("customerPass", "re-enter-new-password",
					"Mật khẩu bạn nhập lại không trùng khớp, vui lòng nhập lại!");
			isValidPass = Boolean.FALSE;
		}

		if (isValidPass) {
			try {
				Account.setPassword(accountService.getHashPassword(newPass));
				accountService.updateAccount(Account);
				System.out.println("==> Customer account password updated successfully!");
			} catch (Exception e) {
				System.out.println("Error: Customer account password updated unsuccessfully!");
			}
		} else {
			System.out.println("Error: Customer account password updated unsuccessfully!");
			return "redirect:/customer/customerChangePassword.htm";
		}

		return "customer/index";
	}

	// Hiển thị danh sách các đặt dịch vụ :
	@RequestMapping("customer/bookingManagement")
	public String showBookingList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");

		List<BookingEntity> bookingList = bookingService.getBookingListBy(customer.getId());

		model.addAttribute("bookingList", bookingList);
		return "customer/bookingManagement";

	}

	// Hiển thị thông tin các đặt dịch vụ :
	@RequestMapping("customer/bookingDetail/{id}")
	public String showBookingDetail(Model model, @PathVariable("id") Integer id) {
		BookingEntity booking = bookingService.getBookingById(id);
		List<MaidEntity> bookingMaids = maidService.getListMaidSelectedListByBookingId(id);

		System.out.println("==> Open a booking checkout session!");

		model.addAttribute("booking", booking);
		model.addAttribute("bookingMaids", bookingMaids);
		model.addAttribute("bookingDetail", new BookingDetailEntity());

		return "customer/bookingDetail";
	}

	@RequestMapping(value = "customer/checkoutBooking/{id}", method = RequestMethod.POST)
	public String checkoutBooking(HttpServletRequest request,
			@ModelAttribute("bookingDetail") BookingDetailEntity bookingDetail, @PathVariable("id") Integer id) {
		Date nowDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		String formattedNowDate = dateFormat.format(nowDate);

		BookingEntity booking = bookingService.getBookingById(id);
		List<BookingDetailEntity> bookingDetails = bookingDetailService.getListBookingDetailsByBookingId(id);
		String rate_str = request.getParameter("rate");
		System.out.println(rate_str);
		bookingDetail.setRating(Integer.parseInt(rate_str));

		for (BookingDetailEntity bkDetail : bookingDetails) {
			try {
				bkDetail.setFeedback(bookingDetail.getFeedback());
				bkDetail.setRating(bookingDetail.getRating());
				bookingDetailService.updateBookingDetail(bkDetail);
				System.out.println("==> Booking detail with id = " + bkDetail.getId() + " updated successfully!");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("Error: Booking detail with id = " + bkDetail.getId() + " updated unsuccessfully!");
				return "redirect:/customer/bookingDetail/" + id + ".htm";
			}

		}

		try {
			BillEntity bill = new BillEntity();
			bill.setTotal(booking.getPrice());
			bill.setBooking(booking);
			bill.setPaymentTime(dateFormat.parse(formattedNowDate));

			billService.createBill(bill);

			System.out.println("==> Bill created created successfully at " + new Date() + '!');
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error: Bill created created unsuccessfully!");
			return "redirect:/customer/bookingDetail/" + id + ".htm";
		}

		try {
			booking.setBookingStatus(3);
			booking.setPaymentStatus(1);
			bookingService.updateBooking(booking);

			System.out.println("==> Booking checkout successfully");
			return "redirect:/customer/bookingManagement.htm";
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("==> Booking checkout unsuccessfully");
			return "redirect:/customer/bookingDetail/" + id + ".htm";
		}
	}

	// Hiển thị danh sách hợp đồng
	@RequestMapping("customer/contractManagement")
	public String showContractList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");

		List<ContractEntity> contractList = contractService.getListContractBy(customer.getId());
		model.addAttribute("contractList", contractList);

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
	public String showBillList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
		List<BillEntity> billList = billService.getListBillBy(customer.getId());

		model.addAttribute("billList", billList);

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
	@RequestMapping("customer/serviceList/{id}")
	public String showServiceList(Model model, @PathVariable("id") Integer id) {
		List<ServiceEntity> serviceList = maidServiceService.getListServiceByCategoryId(id);
		model.addAttribute("serviceList", serviceList);
		System.out.println("==> Open booking service session!");

		return "customer/serviceList";
	}

	// Trang danh sách người giúp việc fulltime cho customer:
	@RequestMapping("customer/serviceList/serviceDetail/{id}")
	public String showServiceDetail(Model model, @PathVariable("id") Integer id) {
		ServiceEntity service = maidServiceService.getServiceById(id);
		model.addAttribute("service", service);

		BookingEntity booking = new BookingEntity();
		model.addAttribute("booking", booking);

		return "customer/serviceDetail";
	}

	private LocalDateTime convertToLocalDateTimeViaInstant(Date dateToConvert) {
		return dateToConvert.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
	}

	// Tạo yêu cầu đặt người giúp việc
	@RequestMapping(value = "customer/booking/{id}", method = RequestMethod.POST)
	public String createBookingRequest(HttpServletRequest request, Model model, @PathVariable("id") Integer id,
			@ModelAttribute("booking") BookingEntity booking, BindingResult errors) {

//		Date currentTime = new Date();
		LocalDateTime currentTime = LocalDateTime.now();
		LocalDateTime bookingStartTime = convertToLocalDateTimeViaInstant(booking.getStartTime());
		System.out.println("Current Time: " + currentTime);
		System.out.println("Booking Start Time: " + booking.getStartTime());

		Boolean isValidBooking = Boolean.TRUE;

		if (booking.getStartTime() == null) {
			errors.rejectValue("startTime", "booking", "Thời gian bắt đầu không được để trống!");
			isValidBooking = Boolean.FALSE;

		} else if (bookingStartTime.isBefore(currentTime)) {
			errors.rejectValue("startTime", "booking", "Thời gian bắt đầu không hợp lệ!");
			isValidBooking = Boolean.FALSE;

		} else if (booking.getBookingAddress().isEmpty()) {
			errors.rejectValue("bookingAddress", "booking", "Địa chỉ không được để trống!");
			isValidBooking = Boolean.FALSE;
		}

		if (isValidBooking) {
			try {
				HttpSession session = request.getSession();
				CustomerEntity customer = (CustomerEntity) session.getAttribute("customer");
				ServiceEntity service = maidServiceService.getServiceById(id);
//				
//				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
////				// Định dạng mới bao gồm ngày, giờ, phút và giây
////		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//				String formattedStartTime = dateFormat.format(booking.getStartTime());
//				String formattedCurrTime = dateFormat.format(currentTime);
//				
				booking.setStartTime(booking.getStartTime());
				booking.setBookingAddress(booking.getBookingAddress());
				booking.setPrice(service.getServicePrices().get(0).getPrice());
				booking.setBookingStatus(1);
				booking.setPaymentStatus(0);
				booking.setCreateAt(new Date());
				booking.setCustomer(customer);
				booking.setService(service);
//				
				bookingService.createBooking(booking);
				System.out.println("==> Booking request created successfully at " + new Date() + '!');
				System.out.println(id + " " + service.getId());
//				return "redirect:/customer/serviceList/" + service.getId() +".htm";
				return "redirect:/customer/index.htm#service";

			} catch (Exception e) {
				System.out.println("Error: \n" + e.toString());
			}
		} else {
			System.out.println("Error: Booking request created unsuccessfuly!");

		}

		System.out.println(booking.getBookingAddress());
		System.out.println(booking.getStartTime());
		return "redirect:/customer/serviceList/serviceDetail/" + id + ".htm";
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
			session.setAttribute("Account", customerAcc);
			mailer.sendMailAsync("DichVuQuanLyMaid", customerAcc.getEmail(), "OTP", "Mã OTP của bạn là: " + otp);
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
				AccountEntity newCustomerAcc = (AccountEntity) session.getAttribute("Account");

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
	public String getAllCategories(Model model) {
		List<CategoryEntity> categoryList = categoryService.getListCategory();
		model.addAttribute("categoryList", categoryList);
		return "customer/index"; // Assuming you have a view named categoryList.jsp
	}

	@RequestMapping("customer/serviceList/index")
	public String retureIndexCustomer(Model model) {
		List<CategoryEntity> categoryList = categoryService.getListCategory();
		model.addAttribute("categoryList", categoryList);
		return "redirect:/customer/index.htm"; // Assuming you have a view named categoryList.jsp
	}

	@RequestMapping("customer/serviceList/serviceDetail/index")
	public String retureIndexCustomer2(Model model) {
		List<CategoryEntity> categoryList = categoryService.getListCategory();
		model.addAttribute("categoryList", categoryList);
		return "redirect:/customer/index.htm"; // Assuming you have a view named categoryList.jsp
	}
}
