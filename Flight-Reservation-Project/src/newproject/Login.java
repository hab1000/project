package newproject;

import java.io.IOException;





//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
        
        
            
            String s1 = request.getParameter("username");
            String s2 = request.getParameter("password");
          if(s1.trim().equals("admin") && s2.trim().equals("admin123")) {
        	  response.sendRedirect("listFlight.jsp.jsp");
          }
          else {
           if(s1.trim().isEmpty()&&s2.trim().isEmpty()) {
        	   response.sendRedirect("login.jsp");
           }
           else {
        	   try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1","root" ,"limalimo");
            Statement  st =  con.createStatement();
            String sql= "select *  from project1.registration where username = '"+s1+"'and password = '"+s2+"' ";
            ResultSet rs = st.executeQuery(sql);
             
			if(rs.next()) {
				
				
				request.setAttribute("data", s1);
			     		    
				RequestDispatcher rd = request.getRequestDispatcher("book.jsp");
				rd.forward(request, response);
						}
			else {
				response.sendRedirect("registration1.jsp");
			}
    
      
			st.close();
			con.close();
    } 
        catch (Exception e) {
        	response.sendRedirect("registration1.jsp");
       // out.println("Driver not found");
    }
  
           }  
        	   
           }
}
}