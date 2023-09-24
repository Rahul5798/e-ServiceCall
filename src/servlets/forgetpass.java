package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.dbConnection;
import model.serviceBean;

@WebServlet("/forgetpass")
public class forgetpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public forgetpass() {
        super();
       }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String contact = request.getParameter("phon");
		String password;
		
		
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
		
		dbConnection db=new dbConnection();
		Connection conn;
		try {
			conn = db.getConnection();
		
			
		
			String sql="SELECt * FROM user WHERE contact=?;";
			PreparedStatement pst;
		
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, contact);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				
				
				password=rs.getString("password");
				
				
				out.print("Your password:"+password);
				request.getRequestDispatcher("Login.jsp").include(request, response);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
