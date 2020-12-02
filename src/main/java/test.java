import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.format.datetime.joda.MillisecondInstantPrinter;

import com.kh.univ.member.model.vo.Student;

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
//	@Autowired
//	private static RegistrationService rService ;
	
	public static void main(String[] args) throws ParseException {
		
		String from = "2013-04-08 10:10:10";

		SimpleDateFormat transFormat = new SimpleDateFormat("MM-dd HH:mm:ss");

		Date to = transFormat.parse(from);
		String to2 = transFormat.format(to);

		Calendar cal = Calendar.getInstance();
		
//		cal.YEAR
		
		System.out.println(to2);

	
	}
	


	
	


}
