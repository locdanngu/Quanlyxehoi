package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.taikhoandao;

/**
 * Servlet implementation class ktdn
 */
@WebServlet("/ktdn")
public class ktdn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		taikhoandao tk = new taikhoandao();
		String dns="aa";
		String username = request.getParameter("txtun");
		String password = request.getParameter("txtpass");
		if (username != null && password != null) {
			HttpSession session = request.getSession();
			if (tk.getTaiKhoan(username, password)==1) {
				if (session.getAttribute("DangNhap") != null)
					session.setAttribute("DangNhap", "");
				session.setAttribute("DangNhap", username);
				RequestDispatcher rd = request.getRequestDispatcher("htxecontroller");
				rd.forward(request, response);
			}
			/*
			 * else { RequestDispatcher rd = request.getRequestDispatcher("htxecontroller");
			 * rd.forward(request, response); }
			 */
			else {
				dns="bb";
				RequestDispatcher rd = request.getRequestDispatcher("dangnhapsaicontroller");
				rd.forward(request, response);
			}
		} /*
			 * else { RequestDispatcher rd =
			 * request.getRequestDispatcher("trangchunguoidung.jsp"); rd.forward(request,
			 * response); }
			 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
