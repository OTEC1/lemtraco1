package logic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.primefaces.context.RequestContext;

import Serve.UserServer_Request;

@WebServlet("/invest_unit_token")
public class Invest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	
    String amount1,item_price,item_id,url;
    public Invest() {
        super();
    }

	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		amount1=request.getParameter("operation_i");
		item_price=request.getParameter("item_price_i");
		item_id=request.getParameter("se");
		
		url="invest_unit.jsp?i="+item_id;
		
		if(new purchase().sessions(request).getAttribute("User1")==null) { 
		  request.setAttribute("alert_pop", "Pls Sign in");   
		}
		else
	    	if(!amount1.equals("0")) {
			 int n=item_price.indexOf(".");
			 item_price=item_price.substring(0,n).trim();
		      new Nav().nav_invest(request,  amount1);
		         
		
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
	
	
	
	


}
