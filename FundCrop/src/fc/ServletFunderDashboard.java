package fc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletFunderDashboard
 */
@WebServlet("/ServletFunderDashboard")
public class ServletFunderDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
//	   String url= "jdbc:mysql://localhost:3306/fundy";
//	   String user = "root";
//	   String pass = "root";
//	   String qry = "SELECT * FROM request()"
//	   
//	   try {
//		    Class.forName("com.mysql.jdbc.Driver");
//			Connection conn = DriverManager.getConnection(url, user, pass);
//			PreparedStatement pst =null;
//	   }
//	   catch(Exception e) {
//		   
//		   
//		   
//	   }
	   
	}

}
