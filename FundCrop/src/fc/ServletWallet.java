package fc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.xdevapi.Statement;

/**
 * Servlet implementation class ServletWallet for Funder
 */
@WebServlet("/ServletWallet")
public class ServletWallet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String url= "jdbc:mysql://localhost:3306/fundy";
			String user = "root";
			String pass = "root";
			String query = "update funder set balance= balance+ ? where fuid= ?";
			int money = Integer.parseInt( request.getParameter("money"));	
			try {
				HttpSession session = request.getSession();
				int id = (int)session.getAttribute("fuid");
				System.out.println("the captured id is "+ id);
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection(url, user, pass);
				PreparedStatement stmt = conn.prepareStatement(query);
				int b = stmt.executeUpdate();
				
				stmt = conn.prepareStatement(query);
				stmt.setInt(1, money);
				stmt.setInt(2, id);
				int a = stmt.executeUpdate();
				if(a!=0) {
					System.out.println("An amount of"+money+ "was deducted");
					response.sendRedirect("faremrDashboard.jsp");
				}
				else {
					System.out.println("couldn't withdraw money");
				}			
			}
			catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
	}	
}
