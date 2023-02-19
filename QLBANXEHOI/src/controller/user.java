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
 * Servlet implementation class user
 */
@WebServlet("/user")
public class user extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public user() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		hangbo hang= new hangbo();
		if(hang.gethang()!=null) {
			request.setAttribute("dshang", hang.gethang());
		}
		String tenhangxe = request.getParameter("tenhangxe");
		
		session.setAttribute("tenhangxe", tenhangxe);
		String GTTK = request.getParameter("GTTK");
		
		session.setAttribute("GTTK", GTTK);

		xebo xdao = new xebo();
		ArrayList<xebean> dsxe = xdao.getxe();
		
		if(tenhangxe==null) {
			/* dsxe = xdao.getxe(); */
		}else {
			dsxe = xdao.Tim2(tenhangxe);
		}
		
		if(GTTK !=null) {
			dsxe = xdao.Tim(GTTK);
		}

		
		
		
		int count =0;
		int endPage=0;
		String indexPage = request.getParameter("page");
		int page=1;
		if(indexPage!=null)
			page = Integer.parseInt(indexPage);
		
		ArrayList<xebean> dsXe = null;
		if(tenhangxe == null && GTTK == null) {
			dsxe = xdao.pagingCars(page);
			count = xdao.getTotalCars();
			endPage = count/8;
			if(count % 8 != 0)
				endPage++;
		} 
		if (tenhangxe != null && GTTK == null ) {
			dsxe = xdao.pagingCarsByMaXe(tenhangxe, page);
			count = xdao.countCarsByMaHang(tenhangxe);
			endPage = count/8;
			if(count % 8 != 0)
				endPage++;
		}
		if (tenhangxe==null && GTTK!=null) {
			dsxe = xdao.pagingCarsBySearchValue(page, GTTK);
			count = xdao.countCarsBySearchValue(GTTK);
			endPage = count/8;
			if(count % 8 != 0)
				endPage++;
		}
		
		if (dsxe != null) {	
			request.setAttribute("dsxe", dsxe);
		}
		request.setAttribute("endPage", endPage);
		/* request.setAttribute("tag", page); */
		
		RequestDispatcher rd = request.getRequestDispatcher("nguoidung.jsp");
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
