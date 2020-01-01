package fc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url= "jdbc:mysql://localhost:3306/fundy";
		String user = "root";
		String pass = "root";
		String cat = request.getParameter("cat");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String q1 = "select * from funder where name=? and password=? ";
		String q2 = "select * from farmer where name=? and password=? ";
		String q3 = "select * from  ca where name=? and password=? ";
		String s1 ="Funder";
		String s2 ="Farmer";
		String s3 ="Certification Authority";
		
		try {
						
			//loading and registering driver
			Class.forName("com.mysql.jdbc.Driver");
		
			//establishing connection with mysql
			Connection conn = DriverManager.getConnection(url, user, pass);
				
			PreparedStatement pst =null;
			
			System.out.println("the value of cat is " + cat);
			System.out.println("the value of user is " + username);
			System.out.println("the value of pwd is " + password);
			
			
			// checking if the user is a funder
			if(cat.equals(s1) ) {
				System.out.println("Inside funder"); // for checking
				
				pst = conn.prepareStatement(q1);
				pst.setString(1, username);
				pst.setString(2, password);
				ResultSet result = pst.executeQuery();
				if(result.next() )
					System.out.println(result.getInt(1));
					{
						
					HttpSession session = request.getSession();
					session.setAttribute("uname",username);
					session.setAttribute("fuid", result.getInt(1));
					response.sendRedirect("funderDashboard.jsp");
				}
			}
				
			// checking if the user is a farmer

			else if(cat.equals(s2)) {
					
				System.out.println("Inside Login Farmer");	
				pst = conn.prepareStatement(q2);
				pst.setString(1, username);
				pst.setString(2, password);
				
				ResultSet result = pst.executeQuery();
				if(result.next()) 
				{
					System.out.println( "the Id of farmer is: "+result.getInt(1));

				HttpSession session = request.getSession();
				session.setAttribute("uname", username);
				session.setAttribute("fid", result.getInt(1));
				response.sendRedirect("farmerDashboard.jsp");
				
				}
				else {
					System.out.println("could not find id");
				}
			
			
			}
			
			// checking if the user is a CA

			
			else if(cat.equals(s3)) {
				
				
				pst = conn.prepareStatement(q3);
				pst.setString(1, username);
				pst.setString(2, password);
				
				ResultSet result = pst.executeQuery();
				if(result.next()) 
				{
					System.out.println("the Id of funder is: "+result.getInt(1));

				HttpSession session = request.getSession();
				session.setAttribute("uname", username);
				session.setAttribute("cid", result.getInt(1));
				response.sendRedirect("caDashboard.jsp");
				
				
				}
			
			
			}
			
			else {
				response.sendRedirect("login.jsp");
				System.out.println("not working");
			}
			
			//Closing the object connection
			pst.close();
			conn.close();
			
				
		}
	

		
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
