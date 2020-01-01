package fc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

/**
 * Servlet implementation class FarmerRequestStatus
 */
@WebServlet("/FarmerRequestStatus")
public class FarmerRequestStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String url= "jdbc:mysql://localhost:3306/fundy";
		String user = "root";
		String pass = "root";
		int capturedRid = Integer.parseInt( request.getParameter("clickedRId"));
	   
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			//establishing connection with mysql
			Connection conn = DriverManager.getConnection(url, user, pass);
			PreparedStatement pst  = conn.prepareStatement("select * from request r, farmer f where r.fid=f.fid and r.rid="+capturedRid+"");
			ResultSet res = pst.executeQuery();
			HttpSession sess = request.getSession();
			if(res.next()) {
			sess.setAttribute("state",res.getString(29));
			sess.setAttribute("crop",res.getString(3));
			sess.setAttribute("amountneeded",res.getInt(19));
			sess.setAttribute("amountrecieved",res.getInt(6));
			response.sendRedirect("viewRequest.jsp");
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		 
		
   }
}
