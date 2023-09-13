package com.bike.Servlet;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bike.Dao.AdminLogDao;
import com.bike.Dao.LogDao;
import com.bike.bean.AdminLogbean;
import com.bike.bean.Logbean;


@WebServlet("/adminLogin")
public class adminloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public  adminloginServlet() {
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
		String uname1=request.getParameter("aemail");
		String pass1=request.getParameter("apassword");
		AdminLogbean alogb=new AdminLogbean();
		alogb.setUname(uname1);
		alogb.setPass(pass1);
		RequestDispatcher rd=null;
		AdminLogDao alogdao=new AdminLogDao();
		
		try {
			if(alogdao.validate(alogb)) {
				rd=request.getRequestDispatcher("admin.jsp");
				
			}
			else {
				
				request.setAttribute("status1","failed");
				rd=request.getRequestDispatcher("adminlogin.jsp");
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
