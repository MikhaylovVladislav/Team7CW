package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name="CalcPDF", urlPatterns="/JavaPDF") 
public class CalcPDF extends HttpServlet implements Inter1,Inter2 {


	//public static String SrokGet;
	public static String Usl1Get;
	public static String Usl2Get;
	public static String Usl3Get;
	public static String Usl4Get;
	/*public static String Usl5Get;
	public static String Usl6Get;
	public static String Usl7Get;
	public static String Usl8Get;
	public static String Usl9Get;
	public static String Usl10Get;
	public static String Usl11Get;
	public static String Usl12Get;
	public static String PromoGet;
	public static String SostGet;
	*/
	public static String q2;
	public static String q1;
	public static String ColGet;
	public static String Textcol;

	
	public static String KfpromoGet;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributes(request);
	//	response.setContentType("text/html");
		
		
		TestPDF PDF = new TestPDF();
		String goals = "Hello";
		PDF.Create(goals);
		Usl1Get=PDF.filepath;
		request.setAttribute("Usl1", Usl1Get); //add code
		request.getRequestDispatcher("/Results.jsp").forward(request, response); //moved
		 
	    String q2 = request.getParameter("Whiteid");
	    // compare selected value 
	    if ("Whiteid".equals(q1)) {
        Textcol="#FFFAFA";
	}
	    if ("Blackid".equals(q2)) {
	        Textcol="#2F4F4F";
		}

	    }
		
	
	
	private static class RequestCalc {

		//private final String TextSrok;
		private final String TextUsl1;
		private final String TextUsl2;
		private final String TextUsl3;
		private final String TextUsl4;
		/*private final String TextUsl5;
		private final String TextUsl6;
		private final String TextUsl7;
		private final String TextUsl8;
		private final String TextUsl9;
		private final String TextUsl10;
		private final String TextUsl11;
		private final String TextUsl12;
		private final String TextPromo;
		private final String TextSost;
*/
		private final String TextKfpromo;
		private final String TextCol;
						
		private RequestCalc (String Usl1, String Usl2, String Usl3, String Usl4, String Kfpromo, String Col) {

			//this.TextSrok = Srok;
			this.TextUsl1 = Usl1;
			this.TextUsl2 = Usl2;
			this.TextUsl3 = Usl3;
			this.TextUsl4 = Usl4;
			/*this.TextUsl5 = Usl5;
			this.TextUsl6 = Usl6;
			this.TextUsl7 = Usl7;
			this.TextUsl8 = Usl8;
			this.TextUsl9 = Usl9;
			this.TextUsl10 = Usl10;
			this.TextUsl11= Usl11;
			this.TextUsl12 = Usl12;
			this.TextPromo = Promo;
			this.TextSost = Sost;
			*/
			this.TextKfpromo = Kfpromo;
			this.TextCol = Col;


			//SrokGet=TextSrok;
			Usl1Get=TextUsl1;
			Usl2Get=TextUsl2;
			Usl3Get=TextUsl3;
			Usl4Get=TextUsl4;
			/*Usl5Get=TextUsl5;
			Usl6Get=TextUsl6;
			Usl7Get=TextUsl7;
			Usl8Get=TextUsl8;
			Usl9Get=TextUsl9;
			Usl10Get=TextUsl10;
			Usl11Get=TextUsl11;
			Usl12Get=TextUsl12;
			PromoGet=TextPromo;
			SostGet=TextSost;
			*/
			KfpromoGet=TextKfpromo;
			ColGet=TextCol;
			
			
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			//request.getParameter("Srok"),
			request.getParameter("Usl1"),
			request.getParameter("Usl2"),
			request.getParameter("Usl3"),
			request.getParameter("Usl4"),
			/*request.getParameter("Usl5"),
			request.getParameter("Usl6"),
			request.getParameter("Usl7"),
			request.getParameter("Usl8"),
			request.getParameter("Usl9"),
			request.getParameter("Usl10"),
			request.getParameter("Usl11"),
			request.getParameter("Usl12"),
			request.getParameter("Promo"),
			request.getParameter("Sost"));
			*/
			request.getParameter("TextCol"),
			request.getParameter("Kfpromo"));
			
			}
	
		public void setAsRequestAttributes(HttpServletRequest request) {
			String sosg = request.getParameter("Sost");
			double Kfpr; // кф класса ремонта
			double p=1;
			double g=1;
			double r;
			double z;
			boolean haveKap;
			double sum1;
			double sum2;
			String gen;
			double sum4;
			double sum5;

			double pr1;
			double pr2;
			double pr3;
			double pr4;
			double pr5;
			double pr6;
			double pr7;
			double pr8;
			double pr9;
			double pr10;
			double pr11;
			double pr12;
			
			
			
		//	clh=FrameCalc.this.cl.getSelectedIndex();
		//	radp=FrameCalc.this.group.getSelection().getActionCommand();
			int intradp;
	        int sostg;
	        //try {intradp=Integer.parseInt(SrokGet);} catch (NumberFormatException e) {intradp=0;}
	        try {sostg=Integer.parseInt(sosg); } catch (NumberFormatException e) {sostg=0;}
	        switch (sostg){ 
		  	case  (1):g=1; break;
		  	case  (2):g=1.1; break;
		 	case  (3): g=1.15;break;
		  	case  (4): g=1.2;break;
		  	case  (5): g=1.25;break;
		  default:g=1;break;
		  }
			 
			//promocode = FrameCalc.this.promo.getText();
			
			// класс ремонта
		//	  switch (clh){ 
		//	  	case  (0):h=1;break;   			         
		//	  	case  (1): h=1.21; break;
		//	  	case  (2):h=1.42;break;
		//	  default:break;
		//	  }
			  
			// состояние строения
			  
			 
			// срок ремонта
			 /* switch (intradp) { 
			 	case  (0):p=1.21;break;
			  	case  (1):p=1;break;
			  default:p=1;break;
			  }
			 */
			  
			//  if(haveKap==true) { // наличие услуг как ремонта
			//	 z=0.02; 
			//  }else {
			//	  z=0;
			 // }
			 
			 
			Inter1 i1 = new CalcPDF();
			Inter2 i2 = new CalcPDF();
		//	Арифметика
			  try {pr1=Double.parseDouble(Usl1Get);} catch (NumberFormatException e) {pr1=0;}
			  try {pr2=Double.parseDouble(Usl2Get);} catch (NumberFormatException e) {pr2=0;}
			  try {pr3=Double.parseDouble(Usl3Get);} catch (NumberFormatException e) {pr3=0;}
			  try {pr4=Double.parseDouble(Usl4Get);} catch (NumberFormatException e) {pr4=0;}
			  /*try {pr5=Double.parseDouble(Usl5Get);} catch (NumberFormatException e) {pr5=0;}
			  try {pr6=Double.parseDouble(Usl6Get);} catch (NumberFormatException e) {pr6=0;}
			  try {pr7=Double.parseDouble(Usl7Get);} catch (NumberFormatException e) {pr7=0;}
			  try {pr8=Double.parseDouble(Usl8Get);} catch (NumberFormatException e) {pr8=0;}
			  try {pr9=Double.parseDouble(Usl9Get);} catch (NumberFormatException e) {pr9=0;}
			  try {pr10=Double.parseDouble(Usl10Get);} catch (NumberFormatException e) {pr10=0;}
			  try {pr11=Double.parseDouble(Usl11Get);} catch (NumberFormatException e) {pr11=0;}
			  try {pr12=Double.parseDouble(Usl12Get);} catch (NumberFormatException e) {pr12=0;}
		*/
			
			  sum4=i2.xsum1(pr1,pr2,pr3,pr4);
			    sum5=i1.xsum2(5,6,7,8,9,10,11,12);

			  
				double s1=i1.xsum3(sum5, sum4); //int s1=(int)((((sum5)+(sum4)-((sum4)*z)))*h);
			
				
				int s2=(int)(s1*p*g); //	int s2=(int)(s1*p*g-s1*r);
				  gen=Integer.toString(s2);
				  request.setAttribute("result5", s2);
		
			 
			
			//request.setAttribute("Srok", TextSrok);
			request.setAttribute("Usl1", TextUsl1);
			request.setAttribute("Usl2", TextUsl2);
			request.setAttribute("Usl3", TextUsl3);
			request.setAttribute("Usl4", TextUsl4);
			/*request.setAttribute("Usl5", TextUsl5);
			request.setAttribute("Usl6", TextUsl6);
			request.setAttribute("Usl7", TextUsl7);
			request.setAttribute("Usl8", TextUsl8);
			request.setAttribute("Usl9", TextUsl9);
			request.setAttribute("Usl10", TextUsl10);
			request.setAttribute("Usl11", TextUsl11);
			request.setAttribute("Usl12", TextUsl12);
			request.setAttribute("Promo", TextPromo);
			*/
			request.setAttribute("Kfpromo", TextKfpromo);
			request.setAttribute("col", Textcol);
		}
		
	}

	}

