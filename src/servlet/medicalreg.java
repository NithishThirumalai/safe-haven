package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.medicalregbean;
import Imple.Imple;
import Inter.Inter;

/**
 * Servlet implementation class medicalreg
 */
@WebServlet("/medicalreg")
public class medicalreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public medicalreg() {
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
		
		
		String id=request.getParameter("id");
		System.out.println(id);
		
		String location=request.getParameter("location");
		System.out.println(location);
		
		String seats=request.getParameter("noofpatient");
		System.out.println(seats);
		
		String password=request.getParameter("password");
		System.out.println(password);
		
		
		
		medicalregbean mr=new medicalregbean();
		mr.setId(id);
		mr.setLocation(location);
		mr.setNoofpatient(seats);
		mr.setPassword(password);
		
		
		Inter sd=new Imple();
		int a=sd.medicalreg(mr);
		if(a==1) {
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("error.jsp");
		}
		
	}

	
	

	}


