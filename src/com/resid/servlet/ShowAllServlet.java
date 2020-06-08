package com.resid.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.resid.entity.ResidentsEntity;

@WebServlet("/showallresidents")
public class ShowAllServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String sql = "select * from signup_tbl";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect =DriverManager.getConnection("jdbc:mysql://localhost:3306/myapp_db","root","Qasim1123@");
			PreparedStatement pstmt = connect.prepareStatement(sql);
			ResultSet result = pstmt.executeQuery();
			List<ResidentsEntity> entityList = new ArrayList<ResidentsEntity>();
			
			while (result.next()) {
				ResidentsEntity entity = new ResidentsEntity(result.getString(2), result.getString(3),
						result.getLong(4), result.getString(5), result.getString(6), result.getLong(7), result.getString(8), result.getString(9), result.getString(10));
			    entity.setSid(result.getInt(1));
			    entity.setDoe(result.getTimestamp(11));
			    entity.setRole(result.getString(12));
			    entityList.add(entity); 
			}
			req.setAttribute("residents",entityList);
			req.getRequestDispatcher("showall.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
