package newproject;

import java.io.IOException;

//import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s8 = request.getParameter("username");
		String s9 = request.getParameter("name");
		String s10 = request.getParameter("email");
		String s11 = request.getParameter("password1");
		//String s5 = request.getParameter("password2");
		//PrintWriter out = response.getWriter();
			try {
				

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root",
						"limalimo");
				Statement st = con.createStatement();
				String sql = "insert into project1.registration values ('" + s8 + "','" + s9 + "','" + s10 + "','"
						+ s11 + "')";
				st.executeUpdate(sql);
				response.sendRedirect("login.jsp");
				st.close();
			} catch (Exception e) {
				//out.println("<h1>user name is not available try a different user name</h1>");
				response.sendRedirect("userduplicate.jsp");
			}
		
		}	
	}



