package com.obms.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.obms.bean.LoginBean;
import com.obms.bean.UserBean;
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
        
        HttpSession session=request.getSession();
        session.setAttribute("Accnt_No", Accnt_No);
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
		/*try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(userloginDao);
		//userloginDao=new UserLoginDao();
		int Accnt_No = Integer.parseInt(request.getParameter("Accnt_No"));
        UserBean userBean = null;
		
		 * try { userBean = userloginDao.validateUser(Accnt_No); } catch
		 * (ClassNotFoundException e1) { // TODO Auto-generated catch block
		 * e1.printStackTrace(); }
		 
        
       // UserLoginBean userloginBean = new UserLoginBean();
        //userloginBean.setAccnt_No(Accnt_No);
        
        HttpSession session=request.getSession();
       // session.setAttribute("userBean", userBean);
        
        if(userBean != null) {
        	session.setAttribute("userBean", userBean);
        	response.sendRedirect("userLoggedIn.jsp");
        }
        else {
        	System.out.println("no response");
        }

		
		 * int Accnt_No = Integer.parseInt(request.getParameter("Accnt_No"));
		 * UserLoginBean userloginBean = new UserLoginBean();
		 * userloginBean.setAccnt_No(Accnt_No);
		 * 
		 * HttpSession session=request.getSession(); session.setAttribute("Accnt_No",
		 * Accnt_No); try { if(userloginDao.validateUser(userloginBean)) {
		 * response.sendRedirect("userLoggedIn.jsp"); } } catch (ClassNotFoundException
		 * e) {
		 * 
		 * e.printStackTrace(); } catch (IOException e) {
		 * 
		 * e.printStackTrace(); }
		 
	}
*/

}
