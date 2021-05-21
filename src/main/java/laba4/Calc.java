package laba4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet(name="Calc", urlPatterns="/JavaCalc") //пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅпїЅпїЅпїЅпїЅпїЅпїЅпїЅ пїЅ URL

public class Calc extends HttpServlet {


	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static class RequestCalc {
		private final String first_calc;
		private final String second_calc;
		private final String iskf_calc;
		private String dis;		
		private String per;
	
		
		private RequestCalc (String first, String second, String iskf) {
			this.first_calc = first;
			this.second_calc = second;
			this.iskf_calc = iskf;
	
			}
		
		public static RequestCalc fromRequestParameters(HttpServletRequest request) {
			return new RequestCalc(
			request.getParameter("first"),
			request.getParameter("second"),
			request.getParameter("iskf"));
		
			}
				
		
		public void setAsRequestAttributesAndCalculate(HttpServletRequest request) {
		
			
			request.setAttribute("first_result", first_calc);
			request.setAttribute("second_result", second_calc);
			request.setAttribute("kf_result", iskf_calc);
			
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
				dis="/FaceCalc.jsp";
				} else if(iskf_calc !="") {
					dis="/Auth.jsp";
					
				
		}else{
			
					dis="/Auth.jsp";
					
				}
			if (a==1234 && b==4321) {
				
				
				} else {
				
					request.setAttribute("dis", "disabled");;
					request.setAttribute("dis", "disabled");
					request.setAttribute("hid", "style=\"display:none\"");;
					request.setAttribute("hid", "style=\"display:none\"");
					
				}
			

}
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestCalc Calc = RequestCalc.fromRequestParameters(request);
		Calc.setAsRequestAttributesAndCalculate(request);
		 
		request.getRequestDispatcher(Calc.dis).forward(request, response);
	
	
	
	
}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
         
        // �������� ������
        HttpSession session = request.getSession();
        // �������� ������ name
        String name = (String) session.getAttribute("name");
         
        
    }
}


