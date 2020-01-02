package newproject;

import java.io.IOException;

import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String b2 = request.getParameter("ema11");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "limalimo");
		Statement st = con.createStatement();
		String sql = "select * from booked where (email='" + b2 + "')";
		ResultSet rs1 = st.executeQuery(sql);
		while(rs1.next()) {
		String x1 = rs1.getString("First_name");
		String x2 = rs1.getString("Last_name");
		String x3 = rs1.getString("Departure_city");
		String x4 = rs1.getString("Arrival_city");
		String x5 = rs1.getString("price");
		String x6 = rs1.getString("Departure_date");
		String x7 = rs1.getString("Arrival_date");
		int x8= rs1.getInt("Ticket_number");
		String x9 = rs1.getString("Flight_id");
		String x10 = rs1.getString("Flight_name");
		String x11 = rs1.getString("Seat_Type");
		
	      
	    
	    
        HttpSession session=request.getSession();  
       session.setAttribute("a1",x1);
       session.setAttribute("a2",x2);
       session.setAttribute("a3",x3);
       session.setAttribute("a4",x4);
       session.setAttribute("a5",x5);
       session.setAttribute("a6",x6);
       session.setAttribute("a7",x7);
       session.setAttribute("a8",x8);
       session.setAttribute("a9",x9);
       session.setAttribute("a10",x10);
       session.setAttribute("a11",x11);
       response.sendRedirect("viewed.jsp");
		}
       st.close();
       
	}catch(Exception e){
		
		 response.sendRedirect("booked.jsp");	
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
