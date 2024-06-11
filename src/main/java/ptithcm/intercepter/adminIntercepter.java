package ptithcm.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import ptithcm.entity.AccountEntity;

public class adminIntercepter extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	String uri = request.getRequestURI();
	// Allow access to adminLogin.htm without any checks
    if (uri.contains("admin/adminLogin.htm") || uri.contains("admin/adminForgotPassword.htm") 
    		|| uri.contains("admin/forgotPasswordOTP.htm") || uri.contains("admin/changeForgotPassword.htm")) {
        return true;
    }
	AccountEntity account=(AccountEntity) request.getSession().getAttribute("Account");
	
	if(account==null || account.getRole().getRoleID()!=1)
	{
		System.out.println("chạy interceptor");
		response.sendRedirect(request.getContextPath() + "/main.htm");
	}
	

		
	return true;
}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
}