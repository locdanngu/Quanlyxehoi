package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.chitiethdbo;

/**
 * Servlet implementation class htchitiet
 */
@WebServlet("/htchitiet")
public class htchitiet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htchitiet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		chitiethdbo hdbo = new chitiethdbo();
		long mahoadon = Long.parseLong(request.getParameter("mahoadon"));
		
		if(hdbo.getchitiethd(mahoadon)!=null) {
			request.setAttribute("dschitiethd", hdbo.getchitiethd(mahoadon));
		}
		session.setAttribute("mahoadon", mahoadon);
		RequestDispatcher rd = request.getRequestDispatcher("chitiethd.jsp");
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
