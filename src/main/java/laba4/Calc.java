package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name="Calc", urlPatterns="/JavaCalc") //���������� �������� � URL

public class Calc extends HttpServlet {


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
		 
		request.getRequestDispatcher("/FaceCalc.jsp").forward(request, response);
		
	}
	
	private static class RequestCalc {
		private final String first_calc;

		private double result;
						
		private RequestCalc (String first, String second) {
			this.first_calc = first;

			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"));
			}
				
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
			request.setAttribute("first_result", first_calc);

			String first_try;
			
			try { 
			first_try="admin";

			}
			catch (NumberFormatException e) {
				first_try="";
	
			}
			if (first_try=="1") {
				String s="ERROR";
				request.setAttribute("result", s);;
				request.setAttribute("result", s);
				} else {
			
			request.setAttribute("result", first_try);;
			request.setAttribute("result", first_try);
				}
			if (first_try=="admin") {
				
				
			} else {
				
				request.setAttribute("dis", "disabled");;
				request.setAttribute("dis", "disabled");
			}

}
	}
}

