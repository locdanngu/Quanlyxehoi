package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.hangbo;
import bo.taikhoanadminbo;
import bo.xacnhanbo;
import bo.xebo;

/**
 * Servlet implementation class trangchuadmin
 */
@WebServlet("/trangchuadmin")
public class trangchuadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangchuadmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		xebo xbo = new xebo();
		HttpSession session = request.getSession();
		session.setAttribute("ccar", xbo.getTotalCars());
		xacnhanbo xnbo = new xacnhanbo();
		session.setAttribute("kxn", xnbo.countkxn());
		session.setAttribute("xn", xnbo.countxn());
		hangbo hbo = new hangbo();
		session.setAttribute("chang", hbo.counthx());
		taikhoanadminbo tkadbo = new taikhoanadminbo();
		session.setAttribute("dt", tkadbo.getdoanhthu());
		RequestDispatcher rd = request.getRequestDispatcher("trangchuadmin.jsp");
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
