package DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionSetup {
	
	 private static Connection con = null;

	    public static Connection getConnection() {
	        if (con != null)
	            return con;
	        else {
	            try {
	                
	                String driver = "com.mysql.jdbc.Driver";
	                String url = "jdbc:mysql://localhost:3306/project1";
	                String user = "root";
	                String password = "limalimo";
	                Class.forName(driver);
	                con = DriverManager.getConnection(url, user, password);
	            } catch (ClassNotFoundException cnfe) {
	                System.out.println(cnfe);
	            } catch (SQLException sqe) {
	                System.out.println(sqe);
	            } 
	            return con;
	        }

}
}