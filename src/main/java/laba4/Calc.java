package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="Calc", urlPatterns="/JavaCalc") //пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ URL
public class Calc extends HttpServlet {

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

			double first_try;

			try { 
			first_try=Double.parseDouble(first_calc);

			}
			catch (NumberFormatException e) {
				first_try=0;
	
			}
			if (first_try<=0) {
				String s="ERROR";
				request.setAttribute("result", s);;
				request.setAttribute("result", s);
				} else {
			result=Math.pow(first_try,2)*(Math.sqrt(3))/4;
			request.setAttribute("result", result);;
			request.setAttribute("result", result);
				}
		LvlState2 a = new LvlState2("Аварийное",1.5);
		}
	}
	
	
}
