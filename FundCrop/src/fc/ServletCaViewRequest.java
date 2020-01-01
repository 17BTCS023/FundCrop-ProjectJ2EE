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

/**
 * Servlet implementation class ServletCaViewRequest
 * 
 * The CA can view the request here and can either move to approve or reject 
 * the request
 * 
 * Redirect the CA to approve.jsp with ServletApproveRequest or
 * 
 * reject.jsp with 
 */
@WebServlet("/ServletCaViewRequest")
public class ServletCaViewRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  @Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String url= "jdbc:mysql://localhost:3306/fundy";
			String user = "root";
			String pass = "root";
			int rid = Integer.parseInt( request.getParameter("clickedRId"));
			System.out.println("request id is ="+ rid);
		   
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				//establishing connection with MySQL
				
				Connection conn = DriverManager.getConnection(url, user, pass);
				PreparedStatement pst  = conn.prepareStatement("select * from request r, farmer f where r.fid=f.fid and r.rid="+rid+"");
				ResultSet res = pst.executeQuery();
				HttpSession session = request.getSession();
				session.setAttribute("rid",rid );
				if(res.next()) {
				session.setAttribute("name", res.getString("name"));
				session.setAttribute("state",res.getString(29));
				session.setAttribute("crop",res.getString(3));
				session.setAttribute("amountneeded",res.getInt(19));
				session.setAttribute("amountrecieved",res.getInt(6));
				response.sendRedirect("index.jsp");
				}
				
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println(e);
			}
	   }
}
