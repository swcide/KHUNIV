<%@page import="com.kh.univ.member.model.vo.Admin"%>
<%@page import="com.kh.univ.member.model.vo.Professor"%>
<%@page import="com.kh.univ.member.model.vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%



Student loginUser = (Student)session.getAttribute("loginUser");
Professor loginProf = (Professor)session.getAttribute("loginProf");
Admin loginAdmin = (Admin)session.getAttribute("loginAdmin");

String sNo = null;
String pNo = null;
String aId = null;

String sName =null;
String pName =null;
String aName = null;


int type = 0;

	if(loginUser !=null){
	 sNo =loginUser.getsNo(); 
	 sName =loginUser.getsName();
	 type = loginUser.getType();
	
	}else if(loginProf !=null){	
	 pNo =loginProf.getpNo();
	 pName=loginProf.getpName();
	 type = loginProf.getType();
	
	}else if (loginAdmin !=null){
	 aId = loginAdmin.getaId();
	 aName = loginAdmin.getaName();
	 type = loginAdmin.getType();
	
	}
	
System.out.println(type);	


     

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>