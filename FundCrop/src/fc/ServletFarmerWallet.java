package fc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletFarmerWallet
 */
@WebServlet("/ServletFarmerWallet")
public class ServletFarmerWallet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= "jdbc:mysql://localhost:3306/fundy";
		String user = "root";
		String pass = "root";
		String query = "update farmer set balance= balance- ? where fid= ?";

		PrintWriter out = response.getWriter();

		
		int money = Integer.parseInt( request.getParameter("money"));	
		try {
			HttpSession session = request.getSession();
			int id = (int)session.getAttribute("fid");
			System.out.println("the captured id is "+ id);
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setInt(1, money);
			stmt.setInt(2, id);
			int a = stmt.executeUpdate();
			if(a!=0) {
				System.out.println("An amount of"+money+ "was deducted");
				stmt = conn.prepareStatement("select balance from farmer where fid="+id+"");
				ResultSet rs = stmt.executeQuery();
				if(rs.next()) {
				out.println("<h1>Your Current balance is:</h1>"+ rs.getInt("balance"));}
			}
			else {
				System.out.println("couldn't add money");
			}			
		}
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
}

}
