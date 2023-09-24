package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.dbConnection;
import java.sql.SQLException;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String name;
	public String userid;
	public String email;
	public String pswrd;
	public String address;
	public String contact;
	public String city;
       
    
    public signup() {
        super();
    
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
				name=request.getParameter("name");
				userid=request.getParameter("uid");
				email=request.getParameter("mail");
				pswrd=request.getParameter("pass");
				address=request.getParameter("add");
				contact=request.getParameter("phon");
				city=request.getParameter("city");
				
                dbConnection db=new dbConnection();
                Connection con;
                int i = 0;
                
                response.setContentType("text/html");
                PrintWriter out=response.getWriter();
				
						try {
							con = db.getConnection();
							String sql="insert into user values(?,?,?,?,?,?,?)";
			    			PreparedStatement pst=con.prepareStatement(sql);
			    			pst.setString(1, userid);
			    			pst.setString(2, name);
			    			pst.setString(3, contact);
			    			pst.setString(4, address);
			    			pst.setString(5, pswrd);
			    			pst.setString(6, email); 		
			    			pst.setString(7, city);
			    			
			    			i=pst.executeUpdate();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					 
	                
	                
	    			if(i>0)
	    			{
	    				response.sendRedirect("Login.jsp");
	    			}else
	    			{
	    				out.println("Account already exist");
	    			}
                
				
				
                
           
		
	}

}
