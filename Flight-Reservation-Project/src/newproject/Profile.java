package newproject;

import java.io.IOException;


import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1= request.getParameter("userna");
		//String s2= request.getParameter("user");
		//String s3= request.getParameter("ema");
		String s4 = request.getParameter("pass");
		String s5= request.getParameter("pass1");
		String s6 = request.getParameter("pass2");
		String s7 = request.getParameter("pass3");
		if(s4.equals(s5) && s6.equals(s7)) {
		try {
			

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "limalimo");
			Statement st = con.createStatement();
			String sql = "update registration set password='"+s6+"' where username='"+s1+"' ";
			st.executeUpdate(sql);	
		
			response.sendRedirect("login.jsp");
			st.close();
			con.close();
		} catch (Exception e) {
			//out.println("<h1>user name is not available try a different user name</h1>");
			response.sendRedirect("profile.jsp");
		}
	}

	else {
		response.sendRedirect("profile.jsp");
	}	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
