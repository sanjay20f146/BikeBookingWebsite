package com.bike.Dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bike.bean.Logbean;



public class LogDao {
	   private String DB_URL = "jdbc:mysql://localhost:3306/bikedb";
	   private String USER = "root";
	   private String PASS = "connecthp";
	   private String DBdriver="com.mysql.cj.jdbc.Driver";
	   
	   public void loaddriver(String DBdriver) {
		   try {
			Class.forName(DBdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generate
//			 catch block
			e.printStackTrace();
		}
	   }
	   public Connection getConnection() throws ClassNotFoundException {
		  Connection con=null;
		   try {
			con=DriverManager.getConnection(DB_URL,USER,PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		return con;
		   
	   }
	   
	public boolean validate(Logbean logb) throws SQLException, ClassNotFoundException {
		loaddriver(DBdriver);		
		boolean status=false;
		Connection con=getConnection();
		String sql="select * from login where email=? and password=?";
		PreparedStatement pst;
		try {
		pst=con.prepareStatement(sql);
		pst.setString(1,logb.getUsername());
		pst.setString(2,logb.getPassword());
		ResultSet rst=pst.executeQuery();
		status=rst.next();
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return status;
		
	}	

}

