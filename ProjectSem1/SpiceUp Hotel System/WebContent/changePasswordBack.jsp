<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@include file="conn.jsp" %>
<%!
public static boolean valPass(String password)
{
	if (password.length()>8)
	{
	if(checkPass(password))
	{
		return true;
	}
	else
	{
		return false;
	}

	}
	else
	{
	System.out.println("Too small");
	return false;
	}
}
public static boolean checkPass(String password)
{
	boolean hasNum=false;
	boolean hasCap=false;
	boolean hasLow=false;
	char c;
	for(int i=0;i<password.length();i++)
	{
	c=password.charAt(i);
	if(Character.isDigit(c))
	{
	hasNum=true;
	}
	else if(Character.isUpperCase(c))
	{
	hasCap=true;
	}
	else if(Character.isLowerCase(c))
	{ 
	hasLow=true;
	}
	if(hasNum && hasCap && hasLow)
	{
	return true;
	}

	}
	return false;
}
%>
    
    
    <%
    	String email=request.getParameter("email");
    	String password=request.getParameter("password1");
    	String confirmPassword=request.getParameter("password2");
    	try
    	{
    		Statement st=con.createStatement();
    		ResultSet rs=st.executeQuery("select * from login where email='"+email+"'");
    		if(rs.next())
    		{
    			if(valPass(password))
        		{
    	    		if(password.equals(confirmPassword))
    	    		{
    	    			PreparedStatement ps1=con.prepareStatement("update login set password='"+password+"' where email='"+email+"'");
    	    			int n=ps1.executeUpdate();
    	    			if(n==1)
    	    				out.print("Password Changed");
    	    			else
    	    				out.print("Plzzz Enter Valid Details");
    	    		}
    	    		else
    	    		{
    	    			out.println("Password Doesn't Match");
    	    		}
        		}
        		else
        		{
        			out.print("Invalid Password(Password must more than 8 Letters and include(1 UpperCase,1 LowerCase,1 Digit))");
        		} 
    		}
    		else
    		{
    			out.println("please enter valid Email Id");
    		}
    		
    	}
    	catch(Exception ex)
    	{
    		ex.printStackTrace();
    	}
    %>
