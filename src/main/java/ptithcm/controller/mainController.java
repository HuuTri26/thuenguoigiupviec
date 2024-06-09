package ptithcm.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.AccountEntity;
import ptithcm.entity.BookingEntity;
import ptithcm.entity.CategoryEntity;
import ptithcm.entity.ServiceEntity;
import ptithcm.service.CategoryService;
import ptithcm.service.MaidServiceService;

@Controller
public class mainController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	MaidServiceService maidServiceService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String mainShow(Model model) {
		List<CategoryEntity> categoryList = categoryService.getListCategory();
		model.addAttribute("categoryList", categoryList);
		return "main";
	}

	// Trang danh sách người giúp việc fulltime cho customer:
	@RequestMapping("/serviceList/{id}")
	public String showServiceList(Model model, @PathVariable("id") Integer id) {
		List<ServiceEntity> serviceList = maidServiceService.getListServiceByCategoryId(id);
		model.addAttribute("serviceList", serviceList);

		return "main/serviceList";
	}

	// Trang danh sách người giúp việc fulltime cho customer:
	@RequestMapping("/serviceList/serviceDetail/{id}")
	public String showServiceDetail(Model model, @PathVariable("id") Integer id) {
		ServiceEntity service = maidServiceService.getServiceById(id);
		model.addAttribute("service", service);

		BookingEntity booking = new BookingEntity();
		model.addAttribute("booking", booking);

		return "main/serviceDetail";
	}

	@RequestMapping("/serviceList/serviceDetail/customer/customerLogin")
	public String showCustomerLoginForm(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		return "redirect:/customer/customerLogin.htm";
	}
	
	@RequestMapping("/serviceList/serviceDetail/main")
	public String logoutMain(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		return "redirect:/";
	}
	@RequestMapping("/serviceList/main")
	public String logoutMainn(Model model) {
		model.addAttribute("customerAcc", new AccountEntity());
		return "redirect:/";
	}
}