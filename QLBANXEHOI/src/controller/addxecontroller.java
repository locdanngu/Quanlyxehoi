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


/**
 * Servlet implementation class addxecontroller
 */
@WebServlet("/addxecontroller")
public class addxecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addxecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		xebo x= new xebo();
		/* themxedao txdao = new themxedao(); */
		String addtenxe = request.getParameter("addtenxe");
		int addsoluong = Integer.parseInt(request.getParameter("addsoluong"));
		long addgia = Long.parseLong(request.getParameter("addgia"));
		long addmaxe = Long.parseLong(request.getParameter("addmaxe"));
		String addanh = request.getParameter("addfile");
		/* Date addngaynhap = Date.from(request.getParameter("addngaynhap")); */
		// TODO Auto-generated method stub
		/*
		 * if(txdao.addxe(addtenxe, addsoluong, addgia, addmaxe, addanh)==1) {
		 * RequestDispatcher rd = request.getRequestDispatcher("addxecontroller");
		 * rd.forward(request, response); }else {
		 * 
		 * RequestDispatcher rd =
		 * request.getRequestDispatcher("trangchuadmincontroller"); rd.forward(request,
		 * response); }
		 */
		
		x.addxe(addtenxe, addsoluong, addgia, addmaxe, addanh);
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
