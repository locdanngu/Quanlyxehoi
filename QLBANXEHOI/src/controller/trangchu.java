package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.trangchubo;

/**
 * Servlet implementation class trangchu
 */
@WebServlet("/trangchu")
public class trangchu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangchu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		trangchubo tcbo = new trangchubo();
		if(tcbo.getxenoibat()!=null) {
			request.setAttribute("dsxenoibat", tcbo.getxenoibat());
		}
		
		if(tcbo.getxemoinhat()!=null) {
			request.setAttribute("dsxemoinhat", tcbo.getxemoinhat());
		}
		
		if(tcbo.getxerenhat()!=null) {
			request.setAttribute("dsxerenhat", tcbo.getxerenhat());
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher("trangchu.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
