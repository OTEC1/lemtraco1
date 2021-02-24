package logic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Serve.UserServer_Request;

@WebServlet("/button_query")
public class Login_in_view extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  String name,url;
    public Login_in_view() {
        super();
    }

	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		name=request.getParameter("state");
	
		if(new purchase()
		  .sessions(request)
		    .getAttribute("User1")==null)
				url="Sign_in.jsp";

		else{
		    new Nav().teste(request);
		        url="index.jsp";	 
		    }

		request.getRequestDispatcher(url).forward(request, response);
	}

	

}
