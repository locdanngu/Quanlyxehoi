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
 * Servlet implementation class chinhsuahangxecontroller
 */
@WebServlet("/chinhsuahangxecontroller")
public class chinhsuahangxecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chinhsuahangxecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		hangbo h=new hangbo();
		String mahangxe = request.getParameter("mahangxe");
		String tenhangxemoi = request.getParameter("tenhangxemoi");
		String anhhangxemoi = request.getParameter("addfile");
		h.edithangxe(tenhangxemoi, anhhangxemoi,mahangxe);
		
		RequestDispatcher rd = request.getRequestDispatcher("chonhangdexoacontroller");
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
