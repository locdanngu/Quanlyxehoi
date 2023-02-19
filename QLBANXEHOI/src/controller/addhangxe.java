package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.hangbo;

/**
 * Servlet implementation class addhangxe
 */
@WebServlet("/addhangxe")
public class addhangxe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addhangxe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		hangbo h= new hangbo(); 
		/* themhangxedao thxdao = new themhangxedao(); */
		String addtenhangxe = request.getParameter("addtenhangxe");
		String addanhhangxe = request.getParameter("addfile");
		/* Date addngaynhap = Date.from(request.getParameter("addngaynhap")); */
		// TODO Auto-generated method stub
		/*
		 * if(thxdao.addhangxe(addtenhangxe)==1) { RequestDispatcher rd =
		 * request.getRequestDispatcher("addxecontroller"); rd.forward(request,
		 * response); }else {
		 * 
		 * RequestDispatcher rd =
		 * request.getRequestDispatcher("trangchuadmincontroller"); rd.forward(request,
		 * response); }
		 */
		
		
		h.addhangxe(addtenhangxe,addanhhangxe);
		RequestDispatcher rd = request.getRequestDispatcher("qlhangxe");
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
