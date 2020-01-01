package fc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletInvest
 * Enter the money into the funds
 */
@WebServlet("/ServletInvest")
public class ServletInvest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 
		@Override
			protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("redirected to servletInvest.java");
				String url= "jdbc:mysql://localhost:3306/fundy";
				String user = "root";
				String pass = "root";
				String qry = "INSERT INTO funds(frid,ffunderid,amount) values(?,?,?)";
				int money = Integer.parseInt( request.getParameter("money"));	
				System.out.println("money captured is " + money);
				
				try {
					HttpSession session = request.getSession();
					int id = (int)session.getAttribute("fuid");
					System.out.println("funder id is =" + id);
					
					int reqid = (int)session.getAttribute("rid");
					System.out.println("the captured request id is "+ reqid);
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection(url, user, pass);
					PreparedStatement stmt = conn.prepareStatement(qry);
					stmt.setInt(1, reqid);
					stmt.setInt(2, id);
					stmt.setInt(3, money);

					int i = stmt.executeUpdate();
	
					if(i!=0) {
						System.out.println("Funds raised!");
						response.sendRedirect("funderDashboard.jsp");
					}
					else {
						System.out.println("couldn't enter the value");
					}			
				}
				catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
		}	

}
