package com.berkayefe;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DataBase dataBase = new DataBase();
		
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		if(dataBase.checkLoginForAdmin(userName, password)){
			HttpSession session = request.getSession();
			session.setAttribute("userName",userName);
			response.sendRedirect("AdminPage.jsp");
		}
		else{
			response.sendRedirect("AdminLogin.jsp");
		}
	}



}
