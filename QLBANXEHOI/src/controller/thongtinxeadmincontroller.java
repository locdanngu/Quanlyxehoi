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
 * Servlet implementation class thongtinxeadmincontroller
 */
@WebServlet("/thongtinxeadmincontroller")
public class thongtinxeadmincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongtinxeadmincontroller() {
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
		String maxe = request.getParameter("mx");
		session.setAttribute("maxe", maxe);
		String tenxe = request.getParameter("tx");
		session.setAttribute("tenxe", tenxe);
		String tenhangxe = request.getParameter("thx");
		session.setAttribute("tenhangxe", tenhangxe);
		long soluongtk = Long.parseLong(request.getParameter("sl"));
		session.setAttribute("soluongtk", soluongtk);
		long gia = Long.parseLong(request.getParameter("g"));
		session.setAttribute("gia", gia);
		String ngaynhap = request.getParameter("nn");
		session.setAttribute("ngaynhap", ngaynhap);
		String anh = request.getParameter("a");
		session.setAttribute("anh", anh);
		
		RequestDispatcher rd = request.getRequestDispatcher("chinhsuaxe.jsp");
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
