package com.obms.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.obms.bean.LoginBean;
import com.obms.dao.LoginDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	    private LoginDao loginDao;

	    public void init() {
	        loginDao = new LoginDao();
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        LoginBean loginBean = new LoginBean();
	        loginBean.setUsername(username);
	        loginBean.setPassword(password);

	       /* try {
	        	
	            if (loginDao.validate(loginBean)) {
	                //HttpSession session = request.getSession();
	                // session.setAttribute("username",username);
	                response.sendRedirect("loginsuccess.jsp");
	            } else {
	                //HttpSession session = request.getSession();
	                //session.setAttribute("user", username);
	                response.sendRedirect("customerHome.jsp");
	            }
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }*/
	        
 System.out.println("****************************************************************************");
            
            System.out.println(loginBean.getUsername() + loginBean.getPassword());
	        if(loginBean.getUsername().equals("Samrat") && loginBean.getPassword().equals("samrat123")) 
	        	
	        {
	        	response.sendRedirect("loginsuccess.jsp");
	        } else
				try {
					if(loginDao.validateUser(loginBean)) {
						response.sendRedirect("customerHome.jsp");
					}
					else
					{
						//response.sendRedirect("customerHome.jsp");
						System.out.println("Incorrect Credentials");
						
						response.sendRedirect("login.jsp");
					}
				} catch (ClassNotFoundException e) {

					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
	    }
}
