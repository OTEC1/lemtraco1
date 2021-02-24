package logic;


import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.primefaces.context.RequestContext;
import Serve.UserServer_Request;


public class Nav   {

	
	  
	 public int number;
	 public String bio_write_up,bio_write_up1,bio_write_up2,bio_write_up3,bio_name,col,price1="100",price2="500",price3="0";
	 
	 
		public Nav() {
		}
	

      public String nv4() { /**new UserServer_Request().notification("Withdrawal Order", "aa", "aa", "tobeokoko18@gmail.com"); **/	   return  "/Investment.xhtml?faces-redirect=true";	}
			
	    // public String nv6() {  String e=GETID();  request.payment_type("Orders",e);	  return  "/Ship.xhtml"; }
	      
	     //public String nv7() { new Sub_total_caculate().sums(); return  "/Cart.xhtml?faces-redirect=true";	}

	    public String n_plus(String c,String e, HttpServletRequest  request1) { 
	      UserServer_Request  request=new UserServer_Request(); 
	       switch (c) {
			
		       case "500":
					 request.add_in(price2,e,request1);  
					 break;

			   case "100":
					  request.add_in(price1,e,request1);
					  break;
				   
		     	case "0":
					  request.add_in(price3,e,request1);
					  break;
				}
  		    	
	    	 return  null; 
	    	 }
	     
	         
	         
	         
	         
	         public String find(String v) { 
	        	v= v.replace(" ", "+");
	        	 return v;
	         }

	         
	         
    
	     
	 public void nav_invest(HttpServletRequest  request1,String prices) {	
	 	  
	    	new UserServer_Request().add_user_investment_selection(Integer.parseInt(prices), 
	    			(String)new purchase().sessions(request1).getId(),
	    			(String)new purchase().sessions(request1).getAttribute("User1"),
	    			  "Paypal",request1);
	    		 		
	     }
	     

	        

	
	 	
	 	
	 
	 	public String bio_select() {
			
	 		FacesContext context=FacesContext.getCurrentInstance();
	 		int x=Integer.parseInt(context.getExternalContext().getRequestParameterMap().get("ty"));
	 		switch (x) {
			case 1:
				setCol("p1.jpg");
				setBio_name("Brief Biography of Chief Charles Ekemezie Okoko  (Chairman)");
				setBio_write_up(" Chief Charles Ekemezie Okoko , an international business mogul is the Executive Chairman at LEMTRACO INTERNATIONAL LIMITED "
						+ "where he works to create an enabling environment for all Nigerians to thrive especially the poor masses  by building Strategic Business Relationships"
						+ " and Partnerships with strong Technology and Products Development Expertise.");

						setBio_write_up1("Okoko in his over twenty (20) years business wealth  of experience in the United States "
								+ "has developed excellent team playing skills, good human resources management, operations management"
								+ " and Technology due diligence.");
						
						setBio_write_up2("Chief Charles who has attended several conferences home and abroad is a Patron of Global Association of "
								+ "Campaign Against Suicide (GACAS) and also, member of Maize Growers, Processors and Marketers Association of Nigeria (MAGPAMAN). "
								+ "With the involvement of   Chief Charles in the aforementioned, it shows his genuine concern for poverty alleviation. He has been recognized with "
								+ "  Poverty Alleviation Advocate Award* by Global Association of Campaign Against Suicide and *Youth Friendly by Qua-Iboe Church Secondary School"
								+ " Ogugu Old Students Association.");

						setBio_write_up3(" Chief Charles Ekemezie Okoko hails from Umudim Akwu Autonomous Community, Akokwa in Ideato North LGA of Imo State, Nigeria. He is married and the Union is blessed with three Children. He enjoys playing table tennis, football and golf. He is interested in both male and female."
						+ " Find Chief Charles Ekemezie Okoko on Facebook, Instagram, Twitter and LinkedIn.");
				return  "/Bio.xhtml?faces-redirect=true";
				
		

	       case 2:
	    	   setCol("p2.jpg");
	    	   setBio_name("BRIEF BIOGRAPHY OF COMR. OMALE JEFF EJUOJO (Managing Director)");
				setBio_write_up("Comr. Omale Jeff Ejuojo, a Technology Entrepreneur with experience in running "
						+ "					Start-ups and Emerging Companies is the Managing Director at LEMTRACO "
						+ "					INTERNATIONAL LIMITED, where he works purposely to alleviate poverty and eliminate hunger "
						+ "					by giving strategic guidance and direction to the board through her Chairman to ensure that the "
						+ "						company achieves her vision, mission and long term goals.");
				
				setBio_write_up1("In one year at LEMTRACO, Omale has been complimented by the Chairman and co-workers, increased revenue"
						+ "					 for the company, responded to over 70% customer calls daily and solved 90% of their concerns, worked on special projects "
						+ "					and developed a new employee orientation program that 99.99% of the company locations adopted. They have also identified several problems and solved them, "
						+ "						an achievement made possible by their team work and"
												+ " flexibility, issues resolution, strategic planning and execution.");
				
				setBio_write_up2("Prior to joining LEMTRACO INTERNATIONAL LIMITED, Ejuojo, a humanitarian was responsible for handling outside World like Media, employees hiring, external and internal affairs at Favoured Treasure Farm,"
						+ " a company he founded in August 2003. While there, Ejuojo, "
						+ "a strategic thinking individual experienced in turning low performing organizations into top revenue producers built a strong team building skill and Products development expertise."
						+ " Omale Jeff Ejuojo has been recognized with the Icon of Leadership  by National Association of Mathematics Students FUTO Chapter, Lover of community development and poverty alleviation "
						+ "by Odo-Ogene Youth Club Association (OYCA), Epitome of Competence by Association of Physical Sciences Students FUTO Chapter, and so on. He has attended several conferences and held several public offices.");
			
				setBio_write_up3("Ejuojo in his quest to selflessly put needed smile on underprivileged children faces and alleviate poverty in general co-formed  Odo-Ogene Youth Club Association (his community youth association) in 2008,"
						+ " Hope for the Hopeless in 2009 which later changed to Global Association of Campaign Against Suicide in 2019 and Jeff Audrey Foundation in October, 2020."
						+ " Omale Jeff Ejuojo* holds Bachelor of Technology in Mathematics from the prestigious Federal University of Technology Owerri and also, a Master's degree holder in view. when not hard at work, he enjoys seeing "
						+ "intelligent and funny movies, analyzing critical issues with solutions and reading important books.  Ejuojo  who hails from Ogugu Centre, Olamaboro Local Government Area, Kogi State, Nigeria is married and the "
						+ "Union is blessed with Children."
						+ "  Find Omale Jeff Ejuojo on Facebook, Instagram, Twitter and LinkedIn.");
				
				return  "/Bio.xhtml?faces-redirect=true";
				
	   	case 3:
	   		setCol("p3.png");
	   		
	   	  setBio_name("Brief Biography of Mr Gregory Tobechukwu Okoko (Executive Director)");
			
	  	setBio_write_up("Mr Gergroy Tobechukwu Okoko a degree holder in Networking Administration and  Engineering in   Programming. "
	  			+ "Tobechukwu who attended Cornerstone College and went"
	  							+"  futher to acquire a degree from India Institute of hardware and technology.");
	

	  	setBio_write_up1("Mr Tobechukwu runs an online business program where he"
	  							+ " enlightens the public with reliable information and current affairs.");
	   	
	  		setBio_write_up2(" Tobechukwu Contributes to the overall business strategy of "
	  				+ "LEMTRACO international limited for Creating awareness of the company and her policies to reach the public in their Unique ways as to facilitate the vision and mission of  LEMTRACO international limited");
	
	  		setBio_write_up3("You can find Mr Gregory  Tobechukwu okoko on"
	  			       + " LinkedIn, twitter, Facebook, Instargram.");

	  		return  "/Bio.xhtml?faces-redirect=true";
			
	      case 4:
	    	  setCol("jeff_wife_2.png");
	    	  
	    	  setBio_name("Brief Biography of Egnr. (Mrs) Nwobi  Ogechi Immaculata.");
	    	  
	    	  setBio_write_up(
	    			  "Nwobi Ogechi Immaculata, the third born and the second daughter of the family"
		    	  		+ " who grew up in her maternal home with her grandmother after the untimely death of her mother,"
		    	  		+ " is an optimistic young lady who works with diligence towards finding solution to problems, eradicating"
		    	  		+ " poverty and making life worth living for the masses.");
	    	  
	    	  setBio_write_up1("Ogechi  is an entrepreneur, philantropist, good counselor and a true humanitarian.");
	    	  
	    	  setBio_write_up2("Immaculata, because of her wealth of knowledge and experience has a lot of awards and certificates from different institutions "
	    	  		+ "  and organizations. She received the award of 'BEST FIELD OFFICER (MARKETER) of the year in 2014 at Dominon MFB LTD' where she worked for three years before joining Faithpraise Global Tech LTD in 2018."
	    	  				+ "At Faithpraise Global Tech., she was the General Manager and through each of her endeavours, "
	    	  				+ "Immaculata works to find solutions that brings success to all involved and she pays adequate attention"
	    	  				+ " towards fostering diversity.");
	    	  
	    	  setBio_write_up3("Nwobi Ogechi holds Higher National Diploma (HND) in Chemical Engineering from Federal Polytechnic, Nekede Owerri, "
	    	  		+ "Imo State, Nigeria and she is happily married with children."
	    	  		+ "She is a member of National Association of Chemical Engineering Technology (NACHET) "
	    	  		+ "and have started the process to joining  Council for the Regulation of Engineering in Nigeria (COREN).");
	    	  return  "/Bio.xhtml?faces-redirect=true";
		
			default:
				break;
			}
	 		
	 		return  null;
		}
		
	  

	 		public void auth_user(HttpServletRequest request) {
	 			if(new purchase().sessions(request).getAttribute("status1") == null)
	 				 new purchase().sessions(request).setAttribute("status1", "Sign in");
			}
	
	 

				
		 
			public void teste(HttpServletRequest  request) {
				     String c=  (String)new purchase().sessions(request).getAttribute("User1");
				       new   UserServer_Request().logout(c,request);
			 	System.out.println("User Ended  app ! "+c);
		 }

		 
			
			public void request_new_id(HttpServletRequest request2) {
				new purchase().sessions(request2).invalidate();
				
			}
			
		
			
			public HttpSession Session1(HttpServletRequest request2) {
		        HttpSession  session1= (HttpSession) request2 .getSession(false);
		        return session1;
			}
			
			
			
			
		 
		    public String time_save(){
		           String o=null;
		        ZonedDateTime z= ZonedDateTime.now();
		        LocalTime time= LocalTime.now();
		        int g=z.toString().indexOf("[");
		        int c=z.toString().indexOf("]");
		        int d=z.toString().indexOf("T");
		        String q=z.toString().substring(g+1, c);
		        for(String h : ZoneId.getAvailableZoneIds()){ 
		          if(h.equals(q)){        
		               o=h.concat("       ").concat(z.toString().substring(0,d).concat("     "+time.toString().substring(0, 5)));
		                break; 
		          }  }
		    return  o;}


			
		    
		    
		    

		     
	
		     
		   
			public String getBio_write_up3() {
				return bio_write_up3;
			}


			public void setBio_write_up3(String bio_write_up3) {
				this.bio_write_up3 = bio_write_up3;
			}


			public String getBio_write_up1() {
				return bio_write_up1;
			}


			public void setBio_write_up1(String bio_write_up1) {
				this.bio_write_up1 = bio_write_up1;
			}


			public String getBio_write_up2() {
				return bio_write_up2;
			}


			public void setBio_write_up2(String bio_write_up2) {
				this.bio_write_up2 = bio_write_up2;
			}


			public String getCol() {
				return col;
			}

			public void setCol(String col) {
				this.col = col;
			}

			public String getBio_name() {
				return bio_name;
			}


			public void setBio_name(String bio_name) {
				this.bio_name = bio_name;
			}


			public String getBio_write_up() {
				return bio_write_up;
			}


			public void setBio_write_up(String bio_write_up) {
				this.bio_write_up = bio_write_up;
			}


			

			public String getPrice1() {
				return price1;
			}

			public void setPrice1(String price1) {
				this.price1 = price1;
			}




			public String getPrice2() {
				return price2;
			}




			public void setPrice2(String price2) {
				this.price2 = price2;
			}


			public int getNumber() {
				return number;
			}




			public void setNumber(int number) {
				this.number = number;
			}   
		     
	
		     
		
}


