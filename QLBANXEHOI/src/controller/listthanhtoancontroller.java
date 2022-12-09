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

import bean.thanhtoanbean;
import bo.thanhtoanbo;

/**
 * Servlet implementation class listthanhtoancontroller
 */
@WebServlet("/listthanhtoancontroller")
public class listthanhtoancontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listthanhtoancontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		thanhtoanbo thanhtoan = new thanhtoanbo();
		HttpSession session = request.getSession();
		String nguoimua = request.getParameter("DangNhap");
		/* request.setAttribute("nguoimua", nguoimua); */
		
		if(thanhtoan.gethoadon(nguoimua)!=null) {
			request.setAttribute("dsthanhtoan", thanhtoan.gethoadon(nguoimua));
		}
		RequestDispatcher rd = request.getRequestDispatcher("thanhtoan.jsp");
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
