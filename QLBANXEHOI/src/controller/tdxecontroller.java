package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.xebo;
import dao.chinhsuaxedao;

/**
 * Servlet implementation class tdxecontroller
 */
@WebServlet("/tdxecontroller")
public class tdxecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tdxecontroller() {
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
		
		/* chinhsuaxedao csdao = new chinhsuaxedao(); */
		String addtenxe = request.getParameter("addtenxe");
		long addsl = Long.parseLong(request.getParameter("addsoluong"));
		long addgia = Long.parseLong(request.getParameter("addgia"));
		long addmahangxe = Long.parseLong(request.getParameter("addmahangxe"));
		String addanh = request.getParameter("addfile");
		long mx = Long.parseLong(request.getParameter("addmaxe"));
		/* long mx = Long.parseLong(request.getParameter("maxe")); */
		/* Date addngaynhap = Date.from(request.getParameter("addngaynhap")); */
		// TODO Auto-generated method stub
		/*
		 * if(csdao.tdxe(addtenxe, addsl, addgia, addmahangxe, addanh, mx)==1) {
		 * RequestDispatcher rd = request.getRequestDispatcher("addxecontroller");
		 * rd.forward(request, response); }else {
		 * 
		 * RequestDispatcher rd =
		 * request.getRequestDispatcher("trangchuadmincontroller"); rd.forward(request,
		 * response); }
		 */
		
		xebo x = new xebo();
		x.editxe(addtenxe, addsl, addgia, addmahangxe, addanh, mx);
		RequestDispatcher rd = request.getRequestDispatcher("trangchuadmincontroller"); 
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
