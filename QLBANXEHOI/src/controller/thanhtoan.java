package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bo.chitiethdbo;
import bo.giohangbo;
import bo.thanhtoanbo;
import dao.thanhtoandao;

/**
 * Servlet implementation class thanhtoan
 */
@WebServlet("/thanhtoan")
public class thanhtoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thanhtoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		giohangbo g;
		HttpSession session = request.getSession();
		String tendn = request.getParameter("tendn");
		String ngaymua = request.getParameter("ngaymua");
		Long sotien = Long.parseLong(request.getParameter("sotien"));
		thanhtoandao ttdao = new thanhtoandao();
		ttdao.addhoadon(tendn, ngaymua, sotien);
		chitiethdbo ctbo = new chitiethdbo();
		long mhd = ctbo.countmhd();
		String DangNhap = request.getParameter("DangNhap");
		g = (giohangbo) session.getAttribute("gio");
		session.setAttribute("DangNhap", DangNhap);
		thanhtoanbo thanhtoan = new thanhtoanbo();
		if(thanhtoan.gethoadon(DangNhap)!=null) {
			request.setAttribute("dsthanhtoan", thanhtoan.gethoadon(DangNhap));
		}
		for(giohangbean gh : g.ds) {
			String mx= gh.getMaxe();
			long sl = gh.getSoluong();
			ctbo.addchitiethd(mx, sl, mhd);
		}
		g.XoaAll();
		
		RequestDispatcher rd = request.getRequestDispatcher("listthanhtoan");
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
