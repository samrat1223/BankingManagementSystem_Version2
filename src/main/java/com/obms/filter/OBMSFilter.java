package com.obms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.obms.bean.Account;
import com.obms.bean.UserBean;

//@WebFilter("/*")
public class OBMSFilter implements Filter {

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		//Object request;
		HttpServletRequest httpRequest = (HttpServletRequest) arg0;

		//HttpServletResponse response;
		HttpServletResponse httpResponse = (HttpServletResponse) arg1;

		HttpSession session = httpRequest.getSession();

		//int id=(int) session.getAttribute("Accnt_No");
		Account account = (Account) session.getAttribute("Accnt_No");
		//UserBean userBean= (UserBean) session.getAttribute("userBean");

		if (account != null) {
			arg2.doFilter(arg0,arg1);
		} else {
			httpResponse.sendRedirect("http://localhost:8082//Online_Bank_Management_System/userLoggedIn.jsp");
		}

	}

	public void init(FilterConfig filterConfig) throws ServletException {

	}

	public void destroy() {

	}

}
