package com.gottube.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LogoutInterceptor extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,HttpSession session, Object handler){
		try { //logininfo ���ǰ��� ���ϰ�� 
			System.out.println("����");
			if(request.getSession().getAttribute("logininfo").toString().equals("true")){ //�α����������� redirect 
				System.out.println("�α׾ƿ� ���ͼ���");
				response.sendRedirect("goFront.do");	
				return false; 
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
			} //���� �ƴϸ� ���������� ��Ʈ�ѷ� ȣ�� return true; }
		return true;
		}

}