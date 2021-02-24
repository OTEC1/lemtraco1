package logic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Serve.UserServer_Request;

@WebServlet("/purchase_unit")
public class purchase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  String amount="",io,url,price,pic_id,item_name;
    public purchase() {
        super();
    }

	
    
    
    public String sum(String v, HttpServletRequest  request) {
    	return new UserServer_Request().sum_in(v, request);
	}
    
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		amount = request.getParameter("operation");
		price=request.getParameter("price");
		io = request.getParameter("eid");
		pic_id = request.getParameter("img_id");
		item_name=request.getParameter("inan");
		
		
		int n=price.indexOf(".");
		price=price.substring(0,n).trim();

		if(!amount.trim().isEmpty()) {	
			long x=new Caculate().name(Long.valueOf(amount), Long.valueOf(price));
			 new UserServer_Request().item_drop_in(Integer.parseInt(amount), Long.valueOf(price), x, pic_id, GETID(request), item_name,request);
			url="purchase.jsp?i="+io;
			}
			
		request.getRequestDispatcher(url).forward(request, response);
	}


	
	public String  GETID(HttpServletRequest request) {
    	String c =sessions(request).getId();
	return c;	
	}
	
	

	public HttpSession sessions(HttpServletRequest request) {
		HttpSession  session=request.getSession();
		return session;
		
	}


}
