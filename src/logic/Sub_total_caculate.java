package logic;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;

import Serve.UserServer_Request;

@ManagedBean
@RequestScoped
public class Sub_total_caculate {
	
		
	static   String subtotal;

	public String getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(String subtotal) {
		this.subtotal = subtotal;
	}
	
	
	

	
	
	
	
	
	
	
	
}
