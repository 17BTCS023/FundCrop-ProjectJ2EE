package fc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestViewed
 */
@WebServlet("/RequestViewed")
public class RequestViewed extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String url= "jdbc:mysql://localhost:3306/fundy";
			String user = "root";
			String pass = "root";
		   
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				//establishing connection with mysql
				Connection conn = DriverManager.getConnection(url, user, pass);
				response.sendRedirect("farmerDashboard.jsp");
			}catch (Exception e) {
				// TODO: handle exception
			}
}
}
