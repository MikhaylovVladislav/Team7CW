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
		private final String second_calc;
		private String dis;			
		private RequestCalc (String first, String second) {
			this.first_calc = first;
			this.second_calc = second;
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"));
			}
				
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
			request.setAttribute("first_result", first_calc);
			request.setAttribute("second_result", second_calc);
			int a,b;
			try {
				a=Integer.parseInt(first_calc);
				b=Integer.parseInt(second_calc);
		    } catch (NumberFormatException e) {
		    	a=0;
		    	b=0;
		    }
		        
		    
			
			if (first_calc=="") {
				
				request.setAttribute("result", "�����");;
				request.setAttribute("result", "�����");
				} else {
			
			request.setAttribute("result", first_calc);;
			request.setAttribute("result", first_calc);
				}
			if (a==6 && b==6) {
				
				
				} else {
					
					request.setAttribute("dis", "disabled");;
					request.setAttribute("dis", "disabled");
				}
			

}
	}
}


