import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.testPage.model.vo.Grade;

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
		
		String [] arr = {"a","b","c","d"};
		
		ArrayList<Grade> list = new ArrayList<Grade>();
		
		Grade g = new Grade();
		
		for (int i = 0; i < arr.length; i++) {
			g.setcNo(arr[i]);
			list.add(g);
		}
	
		
		
		
		System.out.println(list);
		
		
//		Student
//		
////		   데이트 입력
//	       String day2 = "2016-11-22"; // 형식을 지켜야 함
////	       Date t = Date.valueOf(day2);
//	       
////	       시간 입력 
//	       
//	       String time = "10:23:00";
//	       
//	       String startTime = day2+" "+time;
//	       	       
//
//	       System.out.println(startTime);
//	       
////	       Date d = Date.valueOf(startTime);
//	       Timestamp d = Timestamp.valueOf(startTime);
//	       
//	       
//	       
//
//	       System.out.println(d);
//
//	       
//	       
////	       test ts = new test();
//	       
////	       Date last= ts.transformDate(startTime);
//	       


	
	}
	


	
	


}
