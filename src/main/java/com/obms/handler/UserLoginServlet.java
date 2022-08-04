package com.obms.handler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.obms.bean.LoginBean;
import com.obms.bean.UserLoginBean;
import com.obms.dao.LoginDao;
import com.obms.dao.UserLoginDao;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserLoginDao userloginDao;
 
	public void init() {
       userloginDao = new UserLoginDao();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int Accnt_No = Integer.parseInt(request.getParameter("Accnt_No"));
        UserLoginBean userloginBean = new UserLoginBean();
        userloginBean.setAccnt_No(Accnt_No);
        
        try {
			if(userloginDao.validateUser(userloginBean)) {
				response.sendRedirect("userLoggedIn.jsp");
			}
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
	}

}
