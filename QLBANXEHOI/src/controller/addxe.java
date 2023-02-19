package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.xebo;

/**
 * Servlet implementation class addxe
 */
@WebServlet("/addxe")
public class addxe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addxe() {
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
		Date ngaynhap = Date.valueOf(request.getParameter("adddate"));
		x.addxe(addtenxe, addsoluong, addgia, addmaxe, addanh,ngaynhap);
		RequestDispatcher rd = request.getRequestDispatcher("qlxe"); 
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
