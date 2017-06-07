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
		try { //logininfo ���ǰ��� ���ϰ�� 
			if(request.getSession().getAttribute("logininfo") == null ){ //�α����������� redirect 
				System.out.println("�α��� ���ͼ���");
				response.sendRedirect("loginPage.do");	
				return false; 
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
			} //���� �ƴϸ� ���������� ��Ʈ�ѷ� ȣ�� return true; }
		return true;
		}


}
