package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.fwdWorkerBean;
import model.fwdToWorkerModel;
import model.BookingBean;
import model.BookingModel;
import model.workerBean;

@WebServlet("/fwdToWorker")
public class fwdToWorker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public fwdToWorker() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		fwdWorkerBean ff=new fwdWorkerBean();
		fwdWorkerBean fw=new fwdWorkerBean();
		fwdToWorkerModel fm=new fwdToWorkerModel();
		workerBean w=new workerBean();
		BookingBean b=new BookingBean();
		BookingModel bm=new BookingModel();
		
		b.setId(request.getParameter("id"));
		w.setId(request.getParameter("worker"));
		
		fw=fm.getDetails(ff, w, b);
		fm.forwardToPlumber(fw);
		bm.removeDetail(b);
		response.sendRedirect("admin_index.jsp");
	
	}

}
