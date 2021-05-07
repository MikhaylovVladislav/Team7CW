package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="CalcPDF", urlPatterns="/JavaPDF") //ñâÿçûâàíèå ñåðâëåòà ñ URL
public class CalcPDF extends HttpServlet {

//	public static String NumberGet;
//	public static String GroupGet;
//	public static String FIOGet;
//	public static String PointsGet;
	public static String SrokGet;
	public static String Usl1Get;
	public static String Usl2Get;
	public static String Usl3Get;
	public static String Usl4Get;
	public static String Usl5Get;
	public static String Usl6Get;
	public static String Usl7Get;
	public static String Usl8Get;
	public static String Usl9Get;
	public static String Usl10Get;
	public static String Usl11Get;
	public static String Usl12Get;
	public static String PromoGet;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributes(request);
		
		
		request.getRequestDispatcher("/Results.jsp").forward(request, response);
				 
		CreatePDF PDF = new CreatePDF();
		String goals = "Hello";
		PDF.Create(goals);
		
	}
	
	private static class RequestCalc {
//		private final String TextNumber;
//		private final String TextGroup;
//		private final String TextFIO;
//		private final String TextPoints;
		private final String TextSrok;
		private final String TextUsl1;
		private final String TextUsl2;
		private final String TextUsl3;
		private final String TextUsl4;
		private final String TextUsl5;
		private final String TextUsl6;
		private final String TextUsl7;
		private final String TextUsl8;
		private final String TextUsl9;
		private final String TextUsl10;
		private final String TextUsl11;
		private final String TextUsl12;
		private final String TextPromo;

						
		private RequestCalc (String Srok, String Usl1, String Usl2, String Usl3, String Usl4, String Usl5, String Usl6, String Usl7, String Usl8, String Usl9, String Usl10, String Usl11, String Usl12, String Promo) {
//			this.TextNumber = Number;
//			this.TextGroup = Group;
//			this.TextFIO = FIO;
//			this.TextPoints = Points;
			this.TextSrok = Srok;
			this.TextUsl1 = Usl1;
			this.TextUsl2 = Usl2;
			this.TextUsl3 = Usl3;
			this.TextUsl4 = Usl4;
			this.TextUsl5 = Usl5;
			this.TextUsl6 = Usl6;
			this.TextUsl7 = Usl7;
			this.TextUsl8 = Usl8;
			this.TextUsl9 = Usl9;
			this.TextUsl10 = Usl10;
			this.TextUsl11= Usl11;
			this.TextUsl12 = Usl12;
			this.TextPromo = Promo;

			
			
//			NumberGet=TextNumber;
//			GroupGet=TextGroup;
//			FIOGet=TextFIO;
//			PointsGet=TextPoints;
			SrokGet=TextSrok;
			Usl1Get=TextUsl1;
			Usl2Get=TextUsl2;
			Usl3Get=TextUsl3;
			Usl4Get=TextUsl4;
			Usl5Get=TextUsl5;
			Usl6Get=TextUsl6;
			Usl7Get=TextUsl7;
			Usl8Get=TextUsl8;
			Usl9Get=TextUsl9;
			Usl10Get=TextUsl10;
			Usl11Get=TextUsl11;
			Usl12Get=TextUsl12;
			PromoGet=TextPromo;
			
			
			
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
	//		request.getParameter("Number"),
	//		request.getParameter("Group"),
	//		request.getParameter("FIO"),
	//		request.getParameter("Points"));
			request.getParameter("Srok"),
			request.getParameter("Usl1"),
			request.getParameter("Usl2"),
			request.getParameter("Usl3"),
			request.getParameter("Usl4"),
			request.getParameter("Usl5"),
			request.getParameter("Usl6"),
			request.getParameter("Usl7"),
			request.getParameter("Usl8"),
			request.getParameter("Usl9"),
			request.getParameter("Usl10"),
			request.getParameter("Usl11"),
			request.getParameter("Usl12"),
			request.getParameter("Promo"));
			
			}
			
		public void setAsRequestAttributes(HttpServletRequest request) {
			
//			request.setAttribute("Number", TextNumber);
//			request.setAttribute("Group", TextGroup);
//			request.setAttribute("FIO", TextFIO);
//			request.setAttribute("Points", TextPoints);
			request.setAttribute("Srok", TextSrok);
			request.setAttribute("Usl1", TextUsl1);
			request.setAttribute("Usl2", TextUsl2);
			request.setAttribute("Usl3", TextUsl3);
			request.setAttribute("Usl4", TextUsl4);
			request.setAttribute("Usl5", TextUsl5);
			request.setAttribute("Usl6", TextUsl6);
			request.setAttribute("Usl7", TextUsl7);
			request.setAttribute("Usl8", TextUsl8);
			request.setAttribute("Usl9", TextUsl9);
			request.setAttribute("Usl10", TextUsl10);
			request.setAttribute("Usl11", TextUsl11);
			request.setAttribute("Usl12", TextUsl12);
			request.setAttribute("Promo", TextPromo);
		}
		
	}
	
	
}
