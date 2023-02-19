package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.xacnhanbean;
import bo.chapnhanbo;
import bo.xacnhanbo;

/**
 * Servlet implementation class tuchoigiao
 */
@WebServlet("/tuchoigiao")
public class tuchoigiao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tuchoigiao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long machitiethd = Long.parseLong(request.getParameter("machitiethd"));
		String tendn = request.getParameter("tendn");
		long sotien = Long.parseLong(request.getParameter("sotien"));
		chapnhanbo cnbo = new chapnhanbo();
		cnbo.tuchoigiao(machitiethd);
		cnbo.tuchoigiao2(sotien, tendn);
		xacnhanbo xnbo = new xacnhanbo();
		ArrayList<xacnhanbean> dsxn = xnbo.getxacnhan();
		if (dsxn != null) {	
			request.setAttribute("dsxn", dsxn);
		}
		RequestDispatcher rd = request.getRequestDispatcher("qldon");
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
