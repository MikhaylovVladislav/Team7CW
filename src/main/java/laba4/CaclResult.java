package laba4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class CaclResult
 */
@WebServlet(name="CalcRes", urlPatterns="/JavaCalcResult") //���������� �������� � URL

public class CaclResult extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
		 
		request.getRequestDispatcher("/Results.jsp").forward(request, response);
		
	}
	
	private static class RequestCalc {
		private final String first_calc1;

		private double result1;
						
		private RequestCalc (String first1, String second1) {
			this.first_calc1 = first1;

			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first1"),
			request.getParameter("second1"));
			}
				
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
			request.setAttribute("first_result1", first_calc1);

			double first_try1;

			try { 
			first_try1=Double.parseDouble(first_calc1);

			}
			catch (NumberFormatException e) {
				first_try1=0;
	
			}
			if (first_try1<=0) {
				String s="ERROR";
				request.setAttribute("result1", s);;
				request.setAttribute("result1", s);
				} else {
			result1=Math.pow(first_try1,2)*(Math.sqrt(3))/4;
			request.setAttribute("result1", result1);;
			request.setAttribute("result1", result1);
				}

}
	}
}