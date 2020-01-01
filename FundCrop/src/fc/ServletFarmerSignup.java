package fc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletFarmerSignup")
public class ServletFarmerSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= "jdbc:mysql://localhost:3306/fundy";
		String user = "root";
		String pass = "root";
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		int age = Integer.parseInt( request.getParameter("age"));
		int phone= Integer.parseInt(request.getParameter("phone")) ;
		String address = request.getParameter("address");
		String landmark = request.getParameter("landmark");
		String state = request.getParameter("state");
		int pin = Integer.parseInt( request.getParameter("pin"));
		String pan = request.getParameter("pan");
		String aadhar = request.getParameter("aadhar");
		
		String qry = "INSERT INTO farmer(name,age,address,adhaar,pan,phone,state,pin,password,landmark) VALUES( ?,?,?,?,?,?,?,?,?,?)";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement pst = conn.prepareStatement(qry);
			pst.setString(1, name);
			pst.setInt(2,age );
			pst.setString(3, address);
			pst.setString(4, aadhar);
			pst.setString(5, pan);
			pst.setInt(6, phone);			
			pst.setString(7, state);
			pst.setInt(8, pin);
			pst.setString(9, password);
			pst.setString(10, landmark);
			
			int result = pst.executeUpdate();
			
			if(result ==1) {
		
				out.println("<script> alert('You have been successfully logged in!') </script>");				
				response.sendRedirect("login.jsp");
			}
			else {
		
				out.println("<script> alert(''Ooops! Soemthing went wrong!' \\n 'Please register again'') </script>");
				response.sendRedirect("farmerSignup.jsp");
			}
			
		}
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}

}

