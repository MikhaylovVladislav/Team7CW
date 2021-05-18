package laba4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





/**
 * Servlet implementation class CalcAuth
 */
@WebServlet(name="CalcAuth", urlPatterns="/CalcAuth") 
public class CalcAuth extends HttpServlet {

	public static String clr;
	public static String q2;
	public static String q1;
	public static String ColGet;
	public static String Textcol;
	public static String Col1Get;
	public static String Textcol1;
	public static String Col2Get;
	public static String Textcol2;

	/**
	 * 
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static class RequestCalc {
	
	
		private String strTema;		
	
		
		private RequestCalc (String tema) {
			
		
	
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
		
			request.getParameter("tema"));
		
			}
				
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
						request.setAttribute("col", clr);
            
			
				
			

}
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);

        HttpSession session = request.getSession();
        // получаем объект name
        clr = (String) session.getAttribute("tema");
        String q2 = request.getParameter("1");
	    // compare selected value 
	    if ("a".equals(q2)) {
	    	
	    	
        clr="Black";
        Textcol1="Silver";
        Textcol2="DimGrey";
        
	}
	   if ("b".equals(q2)) {
		  
		  
	       clr="White";
	        Textcol1="Ivory";
	        Textcol2="MistyRose";
	}
    	
		request.getRequestDispatcher("/Auth.jsp").forward(request, response);
	
	
	
	
}
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {


        HttpSession session = request.getSession();
        // получаем объект name
    //   clr = (String) session.getAttribute("tema");
         
    	//request.setAttribute("col", clr);
    }
}


