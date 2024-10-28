package servlet;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;
import com.lowagie.text.Element;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import Bean.AES2;
import Bean.publiccomp;
import Imple.Imple;
import Inter.Inter;
import dbcon.dbconn;

/**
 * Servlet implementation class publiccompl
 */
@WebServlet("/publiccompl")
public class publiccompl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public publiccompl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String name = request.getParameter("name").toString();
		System.out.println(name);

		String commail = request.getParameter("compemail").toString();
		System.out.println(commail);

		String comnumber = request.getParameter("number").toString();
		System.out.println(comnumber);

		String disasterdate = request.getParameter("disdate").toString();
		System.out.println(disasterdate);

		String disasterday = request.getParameter("disday").toString();
		System.out.println(disasterday);

		String type = request.getParameter("disastertype").toString();
		System.out.println(type);

		String noofpeople = request.getParameter("noofpeople").toString();
		System.out.println(noofpeople);

		String victmpeople = request.getParameter("victpeople").toString();
		System.out.println(victmpeople);

		String zone = request.getParameter("zone").toString();
		System.out.println(zone);

		String aboutdisaster = request.getParameter("aboutdis").toString();
		System.out.println(aboutdisaster);

		String complaineraddress = request.getParameter("compaddress").toString();
		System.out.println(complaineraddress);

		String maplink = request.getParameter("maplink").toString();
		System.out.println(maplink);

		String disastertime = request.getParameter("disastime").toString();
		System.out.println(disastertime);

		publiccomp ob = new publiccomp();
		ob.setName(name);
		ob.setCompemail(commail);
		ob.setNumber(comnumber);
		ob.setDisdate(disasterdate);
		ob.setDisday(disasterday);
		ob.setDisastertype(type);
		ob.setNoofpeople(noofpeople);
		ob.setVictpeople(victmpeople);
		ob.setZone(zone);
		ob.setAboutdis(aboutdisaster);
		ob.setCompaddress(complaineraddress);
		ob.setMaplink(maplink);
		ob.setDisastime(disastertime);
		String encryptemail;
		String encryptname;
		String encryptnumber;
		String encryptday;
		String encryptdate;

		String encrypttype;
		String encryptpeople;
		String encryptvictpeople;

		String encryptzone;
		String encryptabout;
		String encryptaddress;
		String encryptlink;
		String encrypttime;

		AES2 aes = new AES2();

		Inter sd = new Imple();
		int a = sd.disastercomplaint(ob);
		if (a == 1) {

			Connection con = (Connection) dbconn.create();

			try {

				aes.init();
				encryptname = aes.encrypt(name);
				System.out.println(encryptname);

				aes.init();
				encryptemail = aes.encrypt(commail);
				System.out.println(encryptemail);

				aes.init();
				encryptnumber = aes.encrypt(comnumber);
				System.out.println(encryptnumber);

				aes.init();
				encryptdate = aes.encrypt(disasterdate);
				System.out.println(encryptdate);

				aes.init();
				encryptday = aes.encrypt(disasterday);
				System.out.println(encryptday);

				aes.init();
				encrypttype = aes.encrypt(type);
				System.out.println(encrypttype);

				aes.init();
				encryptpeople = aes.encrypt(noofpeople);
				System.out.println(encryptpeople);

				aes.init();
				encryptvictpeople = aes.encrypt(victmpeople);
				System.out.println(encryptvictpeople);

				aes.init();
				encryptzone = aes.encrypt(zone);
				System.out.println(encryptzone);

				aes.init();
				encryptabout = aes.encrypt(aboutdisaster);
				System.out.println(encryptabout);

				aes.init();
				encryptaddress = aes.encrypt(complaineraddress);
				System.out.println(encryptaddress);

				aes.init();
				encryptlink = aes.encrypt(maplink);
				System.out.println(encryptlink);

				aes.init();
				encrypttime = aes.encrypt(disastertime);
				System.out.println(encrypttime);

				PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO disastermanagement.encryptcomplaint VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?)");

				ps.setString(1, encryptname);
				ps.setString(2, encryptemail);
				ps.setString(3, encryptnumber);

				ps.setString(4, encryptdate);
				ps.setString(5, encryptday);
				ps.setString(6, encrypttype);
				ps.setString(7, encryptpeople);
				ps.setString(8, encryptvictpeople);
				ps.setString(9, encryptzone);
				ps.setString(10, encryptabout);
				ps.setString(11, encryptaddress);
				ps.setString(12, encryptlink);
				ps.setString(13, encrypttime);
				int n = ps.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();

			}

			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("error.jsp");
		}

	}

}
