package com.gottube.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class updateInterceptor extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,HttpSession session, Object handler){
		try { //logininfo ���ǰ��� ���ϰ�� 
			if(request.getParameter("m_id").equals("") || request.getParameter("m_id") == null || request.getParameter("pwd").equals("") || request.getParameter("pwd") == null){ //�α����������� redirect 
				System.out.println("update ���ͼ���");
				response.sendRedirect("goFront.do");	
				return false; 
			}
		}catch (Exception e) { 
			e.printStackTrace(); 
			} //���� �ƴϸ� ���������� ��Ʈ�ѷ� ȣ�� return true; }
		return true;
		}

}
