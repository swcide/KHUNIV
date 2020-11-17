import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
//import java.util.Date;
import java.sql.Date;
import java.sql.Timestamp;

public class test {

//	public static void main(String[] args) {
//		
////	Date test = new Date();
//	Date sqldate = new Date();
//	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyMMddHHmm");
//	String tt = sdf.format(test);
//	String tt2 = sdf2.format(test);	
//	String startDate="20180505083000";
////	Calendar cal =Calendar.getInstance();
////	cal.set(Calendar.YEAR,Integer.parseInt(startDate.substring(0,4)));
////	int year=cal.get(Calendar.YEAR);
////	
//	
////	Date yy =sdf.parse(startDate);
//	System.out.println(tt);
//	System.out.println(tt2);
////	System.out.println(year);
//	
//	}
	
	public static void main(String[] args) {
		
		
		
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 2; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		
		
		String AuthenticationKey = temp.toString();
		System.out.println("랜덤 비번 : "+ AuthenticationKey );


	
	}
	


	
	


}
