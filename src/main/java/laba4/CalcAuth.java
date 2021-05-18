package laba4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 * Servlet implementation class CalcAuth
 */
@WebServlet(name="CalcAuth", urlPatterns="/CalcAuth") 
public class CalcAuth extends HttpServlet {


	
	/**
	 * 
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static class RequestCalc {
		private String tema_calc;
	
		private String strTema;		
	
		
		private RequestCalc (String tema) {
			this.tema_calc = tema;
		
	
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("tema"));
		
			}
				
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
		if (CalcPDF.apptema==true) {			
			tema_calc = "white";
		}else {
			tema_calc = "black";
		}
			
			request.setAttribute("col", tema_calc);
				
				
				
			

}
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
		 
		request.getRequestDispatcher("/Auth.jsp").forward(request, response);
	
	
	
	
}
}


