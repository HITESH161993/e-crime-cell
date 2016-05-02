<%@page import="java.sql.*"  import="java.io.*"%>
<html>
<head>
<title>Login</title>
</head>
<body>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs; 
%>
<%
String tname;  
String s=request.getParameter("uname");
String s1=request.getParameter("upass");
String s2=request.getParameter("Login");
String myurl;
if(s2.equals("Login_As_Incharge"))
{
tname="incharge";
System.out.println("if");
myurl="index_incharge.html";
}
else
{
System.out.println("else");
tname="admin";
myurl="index_admin.html";
}
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("Select * from "+tname+" where username=? and password=?");
ps.setString(1,s);
ps.setString(2,s1);
rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect(myurl);
%>
<h1> Welcome MR<% out.print(" "+s);%></h1>


<%
}
else
{
response.sendRedirect("Loginhtml.html");
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>