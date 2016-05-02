<%@ page import="java.sql.*" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<body>
<%!
Connection con;
ResultSet rs;
PreparedStatement ps; 
%>
<%
String s=request.getParameter("your_name");
String s1=request.getParameter("your_email");
String s2=request.getParameter("your_message"); 
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("insert into cwindow(Name,Email,Complaint)values(?,?,?)");
ps.setString(1,s);
ps.setString(2,s1);
ps.setString(3,s2);
int i=ps.executeUpdate();
response.sendRedirect("index_user.html");
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>
