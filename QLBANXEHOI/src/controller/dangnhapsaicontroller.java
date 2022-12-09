package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.xebean;
import bo.hangbo;
import bo.xebo;

/**
 * Servlet implementation class dangnhapsaicontroller
 */
@WebServlet("/dangnhapsaicontroller")
public class dangnhapsaicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapsaicontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		hangbo hang= new hangbo();
		if(hang.gethang()!=null) {
			request.setAttribute("dshang", hang.gethang());
		}
		
		xebo xdao = new xebo();
		ArrayList<xebean> dsxe = xdao.getxe();
		String mahang = request.getParameter("mh");
		String GTTK = request.getParameter("gttk");
		
		if(mahang != null) { 
			dsxe = xdao.TimHang(mahang); 
		}else { 
			if (GTTK != null)
				dsxe = xdao.Tim(GTTK); 
		}
		
		if (dsxe != null) {	
			request.setAttribute("dsxe", dsxe);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("dangnhapsai.jsp");
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
