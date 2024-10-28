package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Bean.volunterregbean;
import Imple.Imple;
import Inter.Inter;

/**
 * Servlet implementation class volunterlog
 */
@WebServlet("/volunterlog")
public class volunterlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public volunterlog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		/*HttpSession sess1=request.getSession();
		sess1.setAttribute( "tlteam",team);*/
		
		
		
	
	
		
		HttpSession session= request.getSession();
		
		
		
		String vemail=request.getParameter("vemail");
		System.out.println("username: "+vemail);
		
		session.setAttribute("vemail", vemail);
		
		String vpass=request.getParameter("vpass");
		System.out.println("password: "+vpass);
		
		
		
		
		volunterregbean up=new volunterregbean();
		up.setVolemail(vemail);
		up.setVolpass(vpass);
		
		
		
		Inter in=new Imple();
		boolean log=in.volunterlog1(up);
		
		if(log==true){
			response.sendRedirect("volunhome.jsp");
		}
		else{
			response.sendRedirect("error123.jsp");
		}
		
		
		
	}

	}


