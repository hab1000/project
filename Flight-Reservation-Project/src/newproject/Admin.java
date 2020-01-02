package newproject;

import java.io.IOException;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int s1=Integer.parseInt(request.getParameter("fi"));
			String s2=request.getParameter("fn");
			String s3=request.getParameter("dc");
			String s4=request.getParameter("ac");
			String s5=request.getParameter("dd");
			String s6=request.getParameter("ad");
			String s7=request.getParameter("dt");
			String s8=request.getParameter("at");
			String s9=request.getParameter("st");
			String s10=request.getParameter("p");
			String s11=request.getParameter("ft");
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root" ,"limalimo");
			Statement  st =  con.createStatement();
			//String sql="insert into flightinfo values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"')";
			st.executeUpdate("insert into flightinfo values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"')");
			st.close();
			response.sendRedirect("admin.jsp");
			}catch(Exception e){
				//out.println(e);
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
