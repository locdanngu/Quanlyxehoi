package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class in4xe
 */
@WebServlet("/in4xe")
public class in4xe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public in4xe() {
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
		String tenxe = request.getParameter("tenxe");
		session.setAttribute("tenxe", tenxe);
		long maxe = Long.parseLong(request.getParameter("maxe"));
		session.setAttribute("maxe", maxe);
		String anh = request.getParameter("anh");
		session.setAttribute("anh", anh);
		String tenhangxe = request.getParameter("tenhangxe");
		session.setAttribute("tenhangxe", tenhangxe);
		String anhhangxe = request.getParameter("anhhangxe");
		session.setAttribute("anhhangxe", anhhangxe);
		long gia = Long.parseLong(request.getParameter("gia"));
		session.setAttribute("gia", gia);
		long soluong = Long.parseLong(request.getParameter("soluong"));
		session.setAttribute("soluong", soluong);
		String ngaynhap = request.getParameter("ngaynhap");
		session.setAttribute("ngaynhap", ngaynhap);
		
		RequestDispatcher rd = request.getRequestDispatcher("thongtinxe2.jsp");
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
