package logic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Serve.UserServer_Request;

/**
 * Servlet implementation class Item_drop_cart
 */
@WebServlet("/Item_drop_cart")
public class Item_drop_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	String item,k;
    public Item_drop_cart() {
        super();
       
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 item=request.getParameter("del");
		 k=request.getParameter("kn");
		 new UserServer_Request().drop_item(Integer.parseInt(item), request);
		 
		 request.getRequestDispatcher("review_cart.jsp?s="+k).forward(request, response);
	}

}
