package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.xebean;
import bo.hangbo;
import bo.xebo;

/**
 * Servlet implementation class xoamothangxecontroller
 */
@WebServlet("/xoamothangxecontroller")
public class xoamothangxecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoamothangxecontroller() {
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
		
		HttpSession session = request.getSession();
		String tenhangxe = request.getParameter("thx");
		session.setAttribute("tenhangxe", tenhangxe);
		String mahangxe = request.getParameter("mhx");
		session.setAttribute("mahangxe", mahangxe);
		String anhhangxe = request.getParameter("ahx");
		session.setAttribute("anhhangxe", anhhangxe);
		RequestDispatcher rd = request.getRequestDispatcher("xoamothangxe.jsp");
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
