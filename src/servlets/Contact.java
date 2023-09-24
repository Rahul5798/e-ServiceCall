package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ContactModel;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		model.Contact c=new model.Contact();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String msg=request.getParameter("msg");
		String submit=request.getParameter("submit");
		
		if (submit.equals(submit)) 
		{
			try
			{
			
			} catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
		
		
		/*c.setName(request.getParameter("name"));
		c.setEmail(request.getParameter("email"));
		c.setMsg(request.getParameter("msg"));
		*/
		ContactModel cm=new ContactModel();
		cm.saveDetail(c);
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
			response.sendRedirect("index1.jsp");
	}

}
