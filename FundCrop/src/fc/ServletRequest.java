package fc;

import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ServletRequest
 */
@WebServlet("/ServletRequest")
public class ServletRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String url= "jdbc:mysql://localhost:3306/fundy";
		String user = "root";
		String pass = "root";
		

		PrintWriter out = response.getWriter();
		
		FileInputStream f = null;
		
		String crop = request.getParameter("crop");
		String duration = request.getParameter("duration");
		String land = request.getParameter("land");
		String soil = request.getParameter("soil");
		int seed = Integer.parseInt( request.getParameter("seed"));
		int fertilizer = Integer.parseInt(request.getParameter("fertilizer")) ;
		int manure = Integer.parseInt( request.getParameter("manure"));
		int pesticide = Integer.parseInt(request.getParameter("pesticide")) ;
		int irrigation = Integer.parseInt( request.getParameter("irrigation"));
		int transportation = Integer.parseInt(request.getParameter("transpotation")) ;
		int amountneeded = seed+fertilizer+manure+pesticide+irrigation+transportation;
		String document = request.getParameter("document");
		
		String qry = "INSERT INTO request(crop,duration,soiltype,seed,fertilizer,manure,pesticide,irrigation,transportation,land,fid,amountneeded,document) VALUES( ?,?,?,?,?,?,?,?,?,?,?,?,?)";
		//complete the code for fetching the id of farmer from the farmer table and inserting it into the request table
		//String qry2= "select fid from farmer ";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement pst = conn.prepareStatement(qry);
			pst.setString(1, crop);
			pst.setString(2, duration);
			pst.setString(3, soil);
			pst.setInt(4, seed );
			pst.setInt(5, fertilizer);
			pst.setInt(6, manure );			
			pst.setInt(7, pesticide);
			pst.setInt(8, irrigation);
			pst.setInt(9, transportation);
			pst.setString(10, land);
			pst.setInt(11,3000);
			pst.setInt(12, amountneeded);
			// storing the image into another file object
			File image = new File(document);
			// fetching the image value into our readily created file object f
			f = new FileInputStream(image);
			pst.setBinaryStream(13,f);
		
			int result = pst.executeUpdate();
			if(result ==1) {
				System.out.println("Yes. We are done");
				out.println("<script> alert('You have been successfully logged in!') </script>");				
				response.sendRedirect("farmerDashboard.jsp");
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
