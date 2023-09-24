package servlets;
import servlets.signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.dbConnection;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			dbConnection db=new dbConnection();
			Connection con = null;
			
				try {
					con = db.getConnection();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
			
			String uname=request.getParameter("uid");
			String pswrd=request.getParameter("pass");
			boolean flag=false;
			int i;
			String[] sql= {"select * from admin where Admin_id=? and Password=?","select * from worker where worker_id=? and password=?","select * from user where user_id=? and password=?"};
			PreparedStatement pst;
			ResultSet rs;
			for(i=0;i<=2;i++) { 
				try {
					pst = con.prepareStatement(sql[i]);
				
					pst.setString(1, uname);
					pst.setString(2, pswrd);
					rs=pst.executeQuery();
					if(rs.next())
					{
						flag=true;
						break;
					}
					else
					{
						flag=false;
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}	
			
			
			
			if(flag==true)
			{
				if(i==0) {
					HttpSession session=request.getSession(true);
					String uid=(request.getParameter("uid"));
					//loginModel s1=new loginModel();
					signup s=new signup();
					String sql0="select * from admin where Admin_id=?";
					try {
						pst=con.prepareStatement(sql0);
						pst.setString(1, uid);
						rs=pst.executeQuery();
						while(rs.next())
						{
							
							s.userid=rs.getString("Admin_id");
							
							s.pswrd=rs.getString("Password");
							
							session.setAttribute("user",s);
							
							session.setAttribute("abc",uname);
							Cookie ck=new Cookie("abc", uname);
							ck.setMaxAge(60*60);
							response.sendRedirect("admin_index.jsp");
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(i==1) {
					HttpSession session=request.getSession(true);
					String uid=(request.getParameter("uid"));
					//loginModel s1=new loginModel();
					signup s=new signup();
					String sql1="select * from worker where worker_id=?";
					try {
						pst=con.prepareStatement(sql1);
						pst.setString(1, uid);
						rs=pst.executeQuery();
						while(rs.next())
						{
							
							s.userid=rs.getString("worker_id");
							
							s.pswrd=rs.getString("Password");
							
							session.setAttribute("user",s);
							
							session.setAttribute("abc",uname);
							Cookie ck=new Cookie("abc", uname);
							ck.setMaxAge(60*60);
							response.sendRedirect("worker_index.jsp");
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(i==2) {
					HttpSession session=request.getSession(true);
					String uid=(request.getParameter("uid"));
					//loginModel s1=new loginModel();
					signup s=new signup();
					String sql2="select * from user where user_id=?";
					try {
						pst=con.prepareStatement(sql2);
						pst.setString(1, uid);
						rs=pst.executeQuery();
						while(rs.next())
						{
							s.name=rs.getString("Name");
							s.userid=rs.getString("user_id");
							s.email=rs.getString("email");
							s.pswrd=rs.getString("password");
							s.address=rs.getString("address");
							s.contact=rs.getString("contact");
							session.setAttribute("user",s);
							
							session.setAttribute("abc",uname);
							Cookie ck=new Cookie("abc", uname);
							ck.setMaxAge(60*60);
							response.sendRedirect("index1.jsp");
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
			}
			else
			{	
				out.print("User Name Or Password Are Incorrect");
				request.getRequestDispatcher("Login.jsp").include(request, response);
				
				
			}
	
		
		
	}

}
