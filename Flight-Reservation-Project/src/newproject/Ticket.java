package newproject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Ticket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String b3 = request.getParameter("ema11");
		String b4 = request.getParameter("ticket");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "limalimo");
		Statement st = con.createStatement();
		String sql = "delete from booked where (email='"+b3+"' or Ticket_number='"+b4+"')";
		st.executeUpdate(sql);
	    
       response.sendRedirect("login.jsp");
       st.close();
       
	}catch(Exception e){
		
		 response.sendRedirect("login.jsp");	
		 }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
