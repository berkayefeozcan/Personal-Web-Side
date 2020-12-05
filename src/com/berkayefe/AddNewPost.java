package com.berkayefe;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.mysql.cj.Session;

/**
 * Servlet implementation class AddNewPost
 */
@WebServlet("/AddNewPost")
public class AddNewPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpSession = request.getSession();
		System.out.println("aloo");
		if(httpSession.getAttribute("userName")!= null){
			String author = request.getParameter("author");
			String title = request.getParameter("title");
			String readMin = request.getParameter("rMin");
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
			Date date = new Date();  
			String createdDate = formatter.format(date);
			String  content = request.getParameter("content");
			String  imageSource = request.getParameter("image_source");
			DataBase dataBase = new DataBase();
			dataBase.createNewArticle(author, title, content, imageSource, readMin, createdDate);
			response.sendRedirect("AdminPage.jsp");
		
		}
		else{
			response.sendRedirect("AdminLogin.jsp");
		}
		
		
	}

	

}
