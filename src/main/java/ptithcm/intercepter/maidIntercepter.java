package ptithcm.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import ptithcm.entity.AccountEntity;

public class maidIntercepter extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	String uri = request.getRequestURI();
	// Allow access to maidLogin.htm without any checks
    if (uri.endsWith("maid/maidLogin.htm")) {
        return true;
    }
	AccountEntity account=(AccountEntity) request.getSession().getAttribute("Account");
	
	if(account==null || account.getRole().getRoleID()!=2)
	{
		System.out.println("chạy interceptor");
		response.sendRedirect(request.getContextPath() + "/maid/maidLogin.htm");
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