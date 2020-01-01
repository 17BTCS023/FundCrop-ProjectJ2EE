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


@WebServlet("/ServletCaSignup")
public class ServletCaSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= "jdbc:mysql://localhost:3306/fundy";
		String user = "root";
		String pass = "root";
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String pan = request.getParameter("pan");
		int phone= Integer.parseInt(request.getParameter("phone")) ;
		String state = request.getParameter("state");
		int pin = Integer.parseInt( request.getParameter("pin"));
		String password = request.getParameter("password");
		String qry = "INSERT INTO ca(name,pan,phone,state,pin,password) VALUES( ?,?,?,?,?,?)";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement pst = conn.prepareStatement(qry);
			pst.setString(1, name);
			pst.setString(2, pan);
			pst.setInt(3, phone);
			pst.setString(4, state);
			pst.setInt(5, pin);
			pst.setString(6, password);
			
			int result = pst.executeUpdate();
			if(result ==1) {	
				System.out.println("Login successful");
				out.println("<script> alert('You have been successfully logged in!') </script>");
				response.sendRedirect("login.jsp");
			}
			else {
				response.sendRedirect("caSignup.jsp");
				out.println("<script> alert(''Ooops! Soemthing went wrong!' \\n 'Please register again'') </script>");
				response.sendRedirect("caSignup.jsp");
			}
			
		}
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
	}

}


