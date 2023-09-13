package com.bike.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import com.bike.Dao.LogDao;
import com.bike.bean.Logbean;


/**
 * Servlet implementation class StudentDetails
 */
@WebServlet("/Register")
public class Signup extends HttpServlet {

	   private static String DB_URL = "jdbc:mysql://localhost:3306/bikedb";
	   private static String USER = "root";
	   private static String PASS = "connecthp";
	   private String DBdriver="com.mysql.cj.jdbc.Driver";
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	
			try {
			
				Class.forName(DBdriver);
				Connection con=DriverManager.getConnection(DB_URL,USER,PASS);
				String sql="insert into login values(?,?,?)";
				PreparedStatement pst=con.prepareStatement(sql);
//				pst=con.prepareStatement(sql);
				pst.setString(1,request.getParameter("Name"));
				pst.setString(2,request.getParameter("email"));
				pst.setString(3,request.getParameter("password"));
			
				int a= pst.executeUpdate();
				if(a>0) {
				
					response.sendRedirect("index.html");
				}
				else {
					
					out.print("Exisiting User");
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

