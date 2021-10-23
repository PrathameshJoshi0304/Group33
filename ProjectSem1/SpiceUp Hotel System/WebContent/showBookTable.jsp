<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<html>
	<head>
		<!-- Latest compiled and minified CSS -->
			<link rel="stylesheet"
				href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
				integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
				crossorigin="anonymous">
			
			<!-- Optional theme -->
			<link rel="stylesheet"
				href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
				integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
				crossorigin="anonymous">
			
			<!-- Latest compiled and minified JavaScript -->
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
				integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
				crossorigin="anonymous"></script>
			
	</head>

<%@include file="conn.jsp"%>

<% 
	String inputData = request.getParameter("search");
	String name = request.getParameter("name");
	String phno = request.getParameter("phno");
	String email = request.getParameter("email");
	String eMail="";
	ResultSet rs = null;
	
	try
	{
		Statement st = con.createStatement();
		
		String query;
		if (inputData == null || inputData.isEmpty()) 
		{
			PreparedStatement ps = con.prepareStatement("select * from booktable");
			rs = ps.executeQuery();
			%>
			<table border="" class="table table-striped">
				<tr>
					<th>Record ID</th>
					<th>Customer Name</th>
					<th>Email ID</th>
					<th>Phone Number</th>
					<th>No of people</th>
					<th>Date</th>
					<th>Time Slot</th>
					<th>Message</th>
					<th>Table IDs</th>
				</tr>
			<%
			while (rs.next()) 
			{
				%>
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getInt(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td><%=rs.getString(8)%></td>
					<td><%=rs.getString(9)%></td>
					<% eMail=rs.getString(3); %>
					<td><input type="button" class="btn btn-primary" id="btnEmail" onclick="sendmail('<%=eMail%>');" value="Respond"/></td>
					<%-- <td><input type="button" class="btn btn-danger" value="Delete" onclick="Delete('<%=eMail%>')" ></td>	 --%>
				</tr>
				<%
			}
		}
		else
		{
			PreparedStatement ps= con.prepareStatement("select * from bookTable where name like '%"+ inputData + "%' or email like '%" + inputData+ "%' or phno like '%" + inputData+ "%'");
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,phno);
			rs=ps.executeQuery();
			while(rs.next())
			{
				%>
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getInt(5)%></td>
					<td><%=rs.getString(6)%></td>
					<td><%=rs.getString(7)%></td>
					<td><%=rs.getString(8)%></td>
					<td><%=rs.getString(9)%></td>
					<% eMail=rs.getString(3); %>
					<td><input type="button" class="btn btn-primary" id="btnEmail" onclick="<%-- sendmail('<%=eMail%>'); --%>" value="Respond"/></td>
					
				</tr>
<%
			
		}
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
		<script>
			function sendmail(btnEmail){
				    
				
				var r = confirm("Do you want to respond this enqiry?");
				  if (r == true) 
				  {
					//var name = $('#Name').val();
						var email = btnEmail;
						var subject = "SpiceUp Restro & Bar";
						var message = "Your Table has been booked successfully.Please reach according to your selected Time-Slot.";

						// var body = $('#body').val();

						/* var Body='Name: '+name+'<br>Email: '+email+'<br>Subject: '+subject+'<br>Message: '+message; */
						//console.log(name, phone, email, message);

						Email.send({
					SecureToken:"03e1b454-eab3-4eef-8595-c636c808267c",
							To: email,
							From: "spiceuprestro&bar@gmail.com",
							Subject: subject,
							Body: message
						}).then(
							message =>{
								//console.log (message);
								if(message=='OK'){
								alert('Your mail has been send. Thank you for connecting.');
								}
								else{
									console.error (message);
									alert('There is error at sending message. ')
									
								}

							}

						);
				  } else 
				  {
				    alert("You Cancel Operation!");
				  }
				
			}
			</script>
			<script src="https://code.jquery.com/jquery-2.2.4.min.js"
				integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
				crossorigin="anonymous"></script>
			<script src="https://smtpjs.com/v3/smtp.js"></script>
</html>