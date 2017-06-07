package com.gottube.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){
		try { //logininfo 세션값이 널일경우 
			if(request.getSession().getAttribute("logininfo") == null ){ //로그인페이지로 redirect 
				System.out.println("로그인 인터셉터");
				response.sendRedirect("loginPage.do");	
				return false; 
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
			} //널이 아니면 정상적으로 컨트롤러 호출 return true; }
		return true;
		}


}
