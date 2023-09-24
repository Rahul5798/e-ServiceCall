package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BookingBean;
import model.BookingModel;


/**
 * Servlet implementation class booking
 */
@WebServlet("/book_elec")
public class book_elec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public book_elec() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		BookingBean bb=new BookingBean();
		
		bb.setSer(request.getParameter("seName"));
		bb.setReq(request.getParameter("req"));
		bb.setDate(request.getParameter("dat"));
		bb.setTime(request.getParameter("tim"));
		bb.setUId(request.getParameter("uid"));
		bb.setName(request.getParameter("name"));
		bb.setEmail(request.getParameter("mail"));
		bb.setCity(request.getParameter("city"));
		bb.setArea(request.getParameter("area"));
		bb.setAdd(request.getParameter("add"));
		bb.setPhon(request.getParameter("phon"));
		
		BookingModel sm=new BookingModel();
		sm.addDetail(bb,"s03");
		response.sendRedirect("order.jsp");
	}
}
