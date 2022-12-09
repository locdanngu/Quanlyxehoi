package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.thanhtoanbo;
import dao.thanhtoandao;

/**
 * Servlet implementation class xoahoadoncontroller
 */
@WebServlet("/xoahoadoncontroller")
public class xoahoadoncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoahoadoncontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long mahoadon = Long.parseLong(request.getParameter("mhd"));
		
		thanhtoandao ttdao = new thanhtoandao();
		ttdao.trahoadon(mahoadon);
		
		HttpSession session = request.getSession();
		String DangNhap = request.getParameter("DangNhap");
		session.setAttribute("DangNhap", DangNhap);
		thanhtoanbo thanhtoan = new thanhtoanbo();
		if(thanhtoan.gethoadon(DangNhap)!=null) {
			request.setAttribute("dsthanhtoan", thanhtoan.gethoadon(DangNhap));
		}
		RequestDispatcher rd = request.getRequestDispatcher("listthanhtoancontroller");
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
