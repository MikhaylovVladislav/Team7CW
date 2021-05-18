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

	String clr;
	
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
			HttpSession session = request.getSession();
			
            
			
				
			

}
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
	
		request.getRequestDispatcher("/Auth.jsp").forward(request, response);
	
	
	
	
}
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
         
        // получаем сессию
        HttpSession session = request.getSession();
        // получаем объект name
        clr = (String) session.getAttribute("tema");
         
    	request.setAttribute("col", clr);
    }
}


