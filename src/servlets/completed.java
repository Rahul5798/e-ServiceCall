package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BookingBean;
import model.BookingModel;
import model.completedBean;
import model.completedModel;
import model.fwdToWorkerModel;
import model.fwdWorkerBean;
import model.serviceBean;
import model.workerBean;


@WebServlet("/completed")
public class completed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public completed() {
        super();
        }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		fwdWorkerBean ff=new fwdWorkerBean();
		completedBean cp=new completedBean();
		completedModel cs=new completedModel();
		serviceBean sc=new serviceBean();
		fwdToWorkerModel fm=new fwdToWorkerModel();
		
		
		ff.setBookId(request.getParameter("id"));
		sc.setSe_name(request.getParameter("se_name"));
		String extra;
		
		
		extra=request.getParameter("charges");
		
		cp=cs.getDetails(ff, sc, extra);
		cs.enterData(cp);
		fm.deleteData(ff);
		response.sendRedirect("complete.jsp");
	
	}

}
