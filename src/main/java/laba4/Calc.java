package laba4;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name="Calc", urlPatterns="/JavaCalc") //пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ URL

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
		        	
			
			if ((a==1234 && b==4321)||(a==1 && b==1)||(a==2 && b==2)||(a==3 && b==3)) {
				if(a==1) {
					request.setAttribute("result", "Arsenii");;
					request.setAttribute("result", "Arsenii");
				}
				if(a==2) {
					request.setAttribute("result", "Maksim");;
					request.setAttribute("result", "Maksim");
				}
				if(a==3) {
					request.setAttribute("result", "Artem");;
					request.setAttribute("result", "Artem");
				}
				if(a==1234) {
					request.setAttribute("result", "Vladislav");;
					request.setAttribute("result", "Vladislav");
				}
				request.setAttribute("qwerta", " <form action=\"${pageContext.request.contextPath}/JavaCalc\" method=\"post\">");;
				request.setAttribute("qwerta", " <form action=\\\"${pageContext.request.contextPath}/JavaCalc\\\" method=\\\"post\\\">");
				} else {
			
			
			request.setAttribute("qwerta", " <form action=\\\"${pageContext.request.contextPath}/JavaCalc\\\" method=\\\"post\\\">");;
			request.setAttribute("qwerta", " <form action=\\\"${pageContext.request.contextPath}/JavaCalc\\\" method=\\\"post\\\">");
				}
			if (a==1234 && b==4321) {
				
				
				} else {
					
					request.setAttribute("dis", "disabled");;
					request.setAttribute("dis", "disabled");
				}
			

}
	}
}


