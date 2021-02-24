package logic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Serve.UserServer_Request;

@WebServlet("/email_sub")
public class Sub_email extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  String name="",url;
    public Sub_email() {
        super();
    }

	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		name=request.getParameter("email_subsribtion");
		
		
		
		
		if(!name.trim().isEmpty()) 
		   question(name);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	
	
	
	
	public void  question(String names) {
		if(names.trim().length()>0) {
		   int  c =new  UserServer_Request().review_question(names);
		
		   if(c==1) {
		    message("Thanks  an Email would be sent"); 
			names="";}
		else
			message("Error Occured pls try again");
		}
	}


	


	private void message(String string) {
		// TODO Auto-generated method stub
		
	}
}
