package logic;

import java.util.HashMap;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

@ManagedBean
@RequestScoped
public class Question {
	
			String answer;
			
			
		
		public String getAnswer() {
				return answer;
			}



			public void setAnswer(String answer) {
				this.answer = answer;
			}

	
			
		public Map<Integer, String>  question_section() {
			
			Map<Integer,String> map=new  HashMap<Integer, String>();
			
			map.put(1, "Is there any special insurance for the cassava farming and its processing ?");
			map.put(2, "What is the minimum investment fund, percentage and duration ?");
			map.put(3, "Where is the farm and cassava processing factory located ?");
			map.put(4, "Do I get my invested sum and returns after the cycle ?");
			map.put(5, "Is the company registered with CAC and also insured ?");
			map.put(6, "What is the guarantee that my money is safe  ?");
			map.put(7, "Can I visit the farm and sand dredging site ?");
			map.put(8, "Where is the sand dredging site located ?");
			map.put(9, "What are the company's activities ?");
			map.put(10, "Where is your head office located ?");
			map.put(11, "Is there a room for investment ?");
			
			return map;
			
		}


		public String click_respones(int x) {
			
		
			switch (x) {
			case 1:
				setAnswer("  Yes there is");
				break;
			case 2:
				setAnswer( "The minimum investment fund is 350,000.00 with 7 months 45% investment package.");
				
				break;
			case 3:
				setAnswer(" Federal University of Technology Owerri. PMB 1526, Owerri West Local Govt. Area, Imo State, Nigeria.");
				break;
			case 4:
				setAnswer(" Yes________ How do I join?"
						+ "	  Joining is not a big deal,"
						+ "   Click on the register button at the top of our website to register."
						+"   Fill in your details to create your account." 
						+"   Go to the Lemtraco investment page to choose the one you wish to invest on,"
						+ "   Select the number of investment units you want to invest on and click on investor package."
						+"    Click your shopping cart at the top of the website to review your order"
						+ "     Click checkout"
						+ "     Supply your details including your bank account details"
						+ "     Pay for your order.");
				
				
				break;
			case 5:
				setAnswer("Yes. it is registered with CAC under the COMPAINES AND ALLIED MATTERS ACT 1990"
						+ "\n as a limited by share with Registration Company  number: 1704644 and it is insured by AIICO insurance Plc.");
				
				break;
			case 6:
				setAnswer("   99.99%. Every Lemtraco unit is insured. Our insurance partner is AIICO insurance\n"
						+ " Plc. In the event of any unforeseen circumstance which we don't pray for. You will get full refund of your capital\n"
						+ " without any delay.");
			
				break;
			case 7:
				setAnswer(" Yes. We would be glad to welcome you.  \n"
						+ "Meanwhile, factory and general business visit are highly organized on periodic"
						+ "\n basis to carter for all. Intending investors will have to put in their notification"
						+ "\n ahead of time at least, three (3) weeks too,  for a better attention and visiting packages.");
				
				break;
			case 8:
				setAnswer("Otamiri river, Umuchima Village, Ihiagwa Autonomous Community, Owerri West LGA, Imo State, Nigeria.");
				
					break;
				
				case 9:
					setAnswer(" As follow's:  "
							+ "\n  Oil and Gas Marketing,"
							+ "\n  Agricbusinesses,"
							+ "\n Sand Dredging,"
							+ "\n  General  Contracts,"
							+ "\n  General Mechandise,"
							+ "\n  Import & Export Of General Goods.");
					break;

				case 10:
					setAnswer(" 210, Okigwe Road, Opposite Glass House Orji Flyover, Owerri, Imo State, Nigeria.");
					
						break;
					
				case 11:
					setAnswer(" Yes. Agric and capital investments with a well packed quarterly gifts for our valuable investors.");
					break;
			}
			
			return getAnswer();
		}
}
