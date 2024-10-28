package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.selterregbean;
import Bean.volunterregbean;
import Imple.Imple;
import Inter.Inter;

/**
 * Servlet implementation class governseltlog
 */
@WebServlet("/governseltlog")
public class governseltlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public governseltlog() {
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
		
		
	
		HttpSession session= request.getSession();
		
		
		

		
		String id=request.getParameter("id");
		System.out.println("ID: "+id);
		
		String location=request.getParameter("location");
		System.out.println("location: "+location);
		
		session.setAttribute("location1", location);
		
		String password=request.getParameter("password");
		System.out.println("password: "+password);
		
		
		selterregbean sl=new selterregbean();
		sl.setId(id);
		sl.setLocation(location);
		sl.setPassword(password);
		
		
		
		Inter in=new Imple();
		
		boolean log=in.governseltlog1(sl);
		
		if(log==true){
			response.sendRedirect("shelterhome.jsp");
		}
		else{
			response.sendRedirect("error1.jsp");
		}
		
		
		
	}
	}


