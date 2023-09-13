package com.bike.Servlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bike.Dao.LogDao;
import com.bike.bean.Logbean;


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("email");
		String pass=request.getParameter("password");
		Logbean logb=new Logbean();
		logb.setUsername(uname);
		logb.setPassword(pass);
		RequestDispatcher rd=null;
		LogDao logdao=new LogDao();
		
		try {
			if(logdao.validate(logb)) {
				rd=request.getRequestDispatcher("shop.html");
				
			}
			else {
				
				request.setAttribute("status","failed");
				rd=request.getRequestDispatcher("Login.jsp");
			}
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
			catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}

}
