<%@page import="java.sql.*"  import="java.io.*"%>
<html>
<head>
<title>Delete</title>
</head>
<body>
<%! 
Connection con;
PreparedStatement ps;
ResultSet rs; 
%>
<%  
String a;
String b=request.getParameter("id");
String c;
if((request.getParameter("member")).equals("station"))
{
a="policestation";
c="stationid";
}
else
{
a="incharge";
c="uid";
}
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("delete from "+a+"  where "+c+"=?");
ps.setString(1,b);
int i=ps.executeUpdate();
ps.close();
con.close();
response.sendRedirect("index_admin.html");
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>