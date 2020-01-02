package newproject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Booked
 */
@WebServlet("/Booked")
public class Booked extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Booked() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s1 = request.getParameter("first_name");
		String s2 = request.getParameter("last_name");
		int s3 = Integer.parseInt(request.getParameter("age"));
		String s4 = request.getParameter("food");
		String s5 = request.getParameter("depart");
		String s6 = request.getParameter("arrival");
		String s7 =request.getParameter("price");
		String s8 = request.getParameter("departdate");
		String s9 = request.getParameter("arridate");
		String s11 = request.getParameter("id");
		String s12 = request.getParameter("fname");
		String s13 = request.getParameter("stype");
		String s14 = request.getParameter("ftype");
		String s15 = request.getParameter("email");
		
		
		PrintWriter out = response.getWriter();
			try {

				Class.forName("com.mysql.jdbc.Driver");
				Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root" ,"limalimo");
				Statement  st1 =  con.createStatement();
				ResultSet rs1=st1.executeQuery("select max(Ticket_number) from project1.booked");
				rs1.next();
				int s10=1+(rs1.getInt(1));
				st1.executeUpdate("insert into project1.booked values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"')");

				st1.close();
				con.close();
				
				response.sendRedirect("receit.jsp");
				
	
			}catch(Exception e){
				
					out.println("error"+e);	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
