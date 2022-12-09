package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;
import bo.hangbo;

/**
 * Servlet implementation class giohangcontroller
 */
@WebServlet("/giohangcontroller")
public class giohangcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohangcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		HttpSession session=request.getSession();
		String hd = request.getParameter("hd");
		String maxe = request.getParameter("mx");
		hangbo hang= new hangbo();
		if(hang.gethang()!=null) {
			request.setAttribute("dshang", hang.gethang());
		}
		
		giohangbo gh;
		
		String button = request.getParameter("btn-cb-del");
		if(button!=null){
			
			String[] checkboxs =request.getParameterValues("cb-del");
			if(checkboxs ==null) {
				gh = (giohangbo) session.getAttribute("gio");
				session.setAttribute("gio", gh);
			}
			else {
				for(String checkbox: checkboxs){
					gh = (giohangbo) session.getAttribute("gio");
					gh.Xoa(checkbox);
				}
			}
		}
		if(hd!=null){
			if (hd.equals("add")) {
				String tenxe = request.getParameter("tx");
				long soluong = (long) 1;
				long gia = Long.parseLong(request.getParameter("gia"));
				String anh = request.getParameter("anh");
				if (session.getAttribute("gio") == null) {
					gh = new giohangbo();
					session.setAttribute("gio", gh);
				}

				gh = (giohangbo) session.getAttribute("gio");
				gh.Them(maxe, tenxe, soluong, gia, anh);
				
			} else if (hd.equals("remove")) {

				gh = new giohangbo();

				if (session.getAttribute("gio") == null) {

					session.setAttribute("gio", gh);
				}

				if (hd.equals("remove")) {
					gh = (giohangbo) session.getAttribute("gio");
					gh.Xoa(maxe);
				}
				
			} else if (hd.equals("update")) {
				long soluong = Long.parseLong(request.getParameter("soluong"));
				gh = new giohangbo();

				if (session.getAttribute("gio") == null) {
					session.setAttribute("gio", gh);
				}

				gh = (giohangbo) session.getAttribute("gio");
				gh.SuaSoLuong(maxe, soluong);
				
			} else if (hd.equals("removeall")) {

				gh = new giohangbo();
				if (session.getAttribute("gio") == null) {
					session.setAttribute("gio", gh);
				}
				gh = (giohangbo) session.getAttribute("gio");
				gh.XoaAll();
				
			}
		}
		
		response.sendRedirect("htgiocontroller");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
