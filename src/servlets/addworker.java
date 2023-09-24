package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.worker;
import model.workerBean;


@WebServlet("/addworker")
public class addworker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addworker() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		workerBean w=new workerBean();
		worker wm=new worker();
		PrintWriter out=response.getWriter();
		
		w.setId(request.getParameter("id"));
		w.setName(request.getParameter("name"));
		w.setContact(request.getParameter("contact"));
		w.setProfession(request.getParameter("profession"));
		w.setArea(request.getParameter("area"));
		w.setAddress(request.getParameter("address"));
		w.setCity(request.getParameter("city"));
		w.setAge(request.getParameter("age"));
		
		wm.addDetail(w);
		
		response.sendRedirect("admin_index.jsp");
		out.print("Worker Added Successfully");
		
	
	}

}
