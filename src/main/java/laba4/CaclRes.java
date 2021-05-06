package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name="CalcRes", urlPatterns="/JavaCalcResult") //���������� �������� � URL

public class CaclRes extends HttpServlet {
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
						
		private RequestCalc (String first1, String second) {
			this.first_calc1 = first1;

			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"));
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
				request.setAttribute("result", s);;
				request.setAttribute("result", s);
				} else {
			result1=Math.pow(first_try1,2)*(Math.sqrt(3))/4;
			request.setAttribute("result", result1);;
			request.setAttribute("result", result1);
				}

}
	}
}