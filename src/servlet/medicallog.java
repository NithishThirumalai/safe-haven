package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.medicalregbean;
import Bean.selterregbean;
import Imple.Imple;
import Inter.Inter;

/**
 * Servlet implementation class medicallog
 */
@WebServlet("/medicallog")
public class medicallog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public medicallog() {
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
		
		
		

		
		String id=request.getParameter("medicalid");
		System.out.println("ID: "+id);
		
		String location=request.getParameter("zone");
		System.out.println("location: "+location);
		
		session.setAttribute("location2", location);
		
		String password=request.getParameter("password");
		System.out.println("password: "+password);
		
		
		medicalregbean ml=new medicalregbean();
		ml.setId(id);
		ml.setLocation(location);
		ml.setPassword(password);
		
		
		
		Inter in=new Imple();
		
		boolean log=in.medicallog1(ml);
		
		if(log==true){
			response.sendRedirect("medicalhome.jsp");
		}
		else{
			response.sendRedirect("error1.jsp");
		}
		
		
		
	}
	


	}


