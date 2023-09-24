package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.dbConnection;

@WebServlet("/updateuser")
public class updateuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
     
    public updateuser() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String userid = request.getParameter("uid");
		String email = request.getParameter("mail");
		String pswrd = request.getParameter("pass");
		String address = request.getParameter("add");
		String contact = request.getParameter("phon");
		
		
		signup s=new signup();
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
		
		dbConnection db=new dbConnection();
		Connection conn;
		try {
			conn = db.getConnection();
		
			
		
			String sql="UPDATE `user` SET `Name` = ?,`contact_no.` = ?,`address` = ?,`password` = ?,`email` = ?,`city` = ? WHERE `user_id` = ?;";
		
			PreparedStatement pst;
		
			pst = conn.prepareStatement(sql);
			
			pst.setString(1, name);
			pst.setString(2, contact);
			pst.setString(3, address);
		
			
			pst.setString(4, pswrd);
			pst.setString(5, email);
			pst.setString(6, s.userid);
			pst.setString(7, userid);
			int i=pst.executeUpdate();
			
			if(i>0)
			{
				
				System.out.println("Successfully Updated...");
		
						
				//response.sendRedirect("userinfo.jsp");
			}
			else
			{
				out.println("Failed");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*HttpSession session=request.getSession();
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setDateHeader("Expires", 0);
		Cookie[] cks=request.getCookies();
		for(Cookie ck:cks)
		{
			if(ck.getName().equals("abc"))
			{
				ck.setMaxAge(0);
				break;
			}
		}
		session.removeAttribute("abc");
		//session.invalidate();
		session.removeAttribute("user");
		session.setAttribute("user", userid);
		session.setAttribute("user",s);
		
		session.setAttribute("abc",userid);
		Cookie ck=new Cookie("abc", userid);
		ck.setMaxAge(60*60);
				
		response.sendRedirect("userinfo.jsp");*/
		response.sendRedirect("logout.jsp");
		
	}

}
