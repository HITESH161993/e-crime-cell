<%@page import="java.sql.*"  import="java.io.*"%>
<html>
<head>
<title>SaveREgister</title>
</head>
<body>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs; 
%>
<%  
String s=request.getParameter("stationid");
String s1=request.getParameter("stationname");
String s2=request.getParameter("address");
String s3=request.getParameter("stationinchargeuid");
String s4=request.getParameter("stationcontactnumber");
String tables=request.getParameter("button1");
String a;
if(tables.equals("RegisterStation"))
{
a="policestation";
}
else
{
a="incharge";
}
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("insert into "+a+" values(?,?,?,?,?)");
ps.setString(1,s);
ps.setString(2,s1);
ps.setString(3,s2);
ps.setString(4,s3);
ps.setString(5,s4);
int i=ps.executeUpdate();
if(i>0)
{
response.sendRedirect("register_an_incharge.html");
}
else
{
response.sendRedirect("Loginhtml.html");
}
ps.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>