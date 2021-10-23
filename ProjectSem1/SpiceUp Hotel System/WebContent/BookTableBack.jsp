<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@include file="conn.jsp" %>
<%
	String nm=(String)session.getAttribute("nm");
	String emID=(String)session.getAttribute("emID");
	String phoneno=(String)session.getAttribute("phoneno");
	String nop=(String)session.getAttribute("nop");
	String dt=(String)session.getAttribute("dt");
	String timet=(String)session.getAttribute("timet");
	String message=(String)session.getAttribute("message");
	String tbID=(String)session.getAttribute("tbID");
	
	System.out.println(nm);
	System.out.println(emID);
	System.out.println(phoneno);
	System.out.println(nop);
	System.out.println(dt);
	System.out.println(timet); 
	System.out.println(message);
	System.out.println(tbID); 
	
	String cname=request.getParameter("cname");
	String cnum=request.getParameter("ccnum");
	String exmonth=request.getParameter("expmonth");
	String exyear=request.getParameter("expyear");
	String cvv=request.getParameter("cvv");
	
	System.out.println(cname);
	System.out.println(cnum);
	System.out.println(exmonth);
	System.out.println(exyear);
	System.out.println(cvv); 
	
	
	Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	ResultSet rs = st.executeQuery("select * from bookTable");
	
	int id;
	
	if (rs.last()) {
		id = rs.getInt(1);
		id++;
	} else {
		id = 1;
	}
	
	PreparedStatement ps1= con.prepareStatement("insert into bookTable values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps1.setInt(1,id);
	ps1.setString(2,nm);
	ps1.setString(3,emID);
	ps1.setString(4,phoneno);
	ps1.setString(5,nop);
	ps1.setString(6,dt);
	ps1.setString(7,timet);
	ps1.setString(8,message);
	ps1.setString(9,tbID);
	ps1.setString(10,cname);
	ps1.setString(11,cnum);
	ps1.setString(12,exmonth);
	ps1.setString(13,exyear);
	ps1.setString(14,cvv);
	int n = ps1.executeUpdate();
	if(n==1)
	{
		out.println("Table Booked");
		
	}
	else
		out.println("Something goes wrong");
%>