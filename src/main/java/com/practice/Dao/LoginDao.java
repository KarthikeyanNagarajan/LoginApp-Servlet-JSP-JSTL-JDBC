package com.practice.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	String URL = "jdbc:mysql://localhost:3306/test";
	String UserName = "root";
	String Password = "karthik";
	String sql = "select * from userlogin where uname = ? and pwd = ?";
	
	public boolean check(String uname, String pass)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL,UserName,Password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,pass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				return true;
			else
				return false;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;		
	}
}
