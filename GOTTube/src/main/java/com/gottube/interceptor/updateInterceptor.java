package com.gottube.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class updateInterceptor extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,HttpSession session, Object handler){
		try { //logininfo 세션값이 널일경우 
			if(request.getParameter("m_id").equals("") || request.getParameter("m_id") == null || request.getParameter("pwd").equals("") || request.getParameter("pwd") == null){ //로그인페이지로 redirect 
				System.out.println("update 인터셉터");
				response.sendRedirect("goFront.do");	
				return false; 
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
			} //널이 아니면 정상적으로 컨트롤러 호출 return true; }
		return true;
		}

}
