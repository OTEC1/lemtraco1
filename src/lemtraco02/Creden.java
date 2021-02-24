package lemtraco02;

public interface Creden {

	
	
	static String CLIENT_ID="AU2DJhK1TcFirrRut9Ha3VPyt8VXL4_Kz5ATvrDHujJekFGVJzbJ5qAQsOlDIBQdrV46D0abmVRmD3vf",
	 SECRET_ID="ELVORhBV8PcDnyfnx1oa6DeesZEvKgn6Girt_7jypI5AL-1CYaRRfjc8o_DjQ8N9WY0nwagawiYUGJeA",
	 mode="sandbox",
	 key1="1234567812345678",
	 vi_key="1234567812345678",
	 java_key="10375936458365027402764964964036";
	
	
	
	//Development
    static String USER="root", 
			     Pass="7h8g2cc",    
				 URL="jdbc:mariadb://localhost/lemtrac01", 
				 ACCESS_KEY_ID="AKIAYDAUUBKQRT342HUM", 
				 ACCESS_SEC_KEY="pg10NPo1fUuD+1hc5tg/1bmdobl1v7nSXARAjPkd",   
				 bucket="lemtracobucket",
				 driver="org.mariadb.jdbc.Driver",
				success_url="http://localhost:8085/Lemtracoplc/review_payment",
				error_url="http://localhost:8085/Lemtracoplc/cancel.html";
	  
	
	  
	  
	  
	 //Production
	 /* static String	USER="walexfab_lemtraco_user", 
	    Pass="7h8g2ww",
	    URL="jdbc:mariadb://localhost/walexfab_lemtraco_user01",
	   	ACCESS_KEY_ID="AKIAYDAUUBKQRT342HUM", 
	    ACCESS_SEC_KEY="pg10NPo1fUuD+1hc5tg/1bmdobl1v7nSXARAjPkd",   
	    bucket="lemtracobucket",
	  driver="org.mariadb.jdbc.Driver",
	  success_url="https://lemtracointernationallimited.com/review_payment",
	 error_url="https://lemtracointernationallimited.com/cancel.html";
	 */
	  
}
