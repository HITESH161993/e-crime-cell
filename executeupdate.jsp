<%@page import="java.sql.*"  import="java.io.*"  session="true"%>

<%
Connection con;
PreparedStatement ps;
ResultSet rs; 
String s1=request.getParameter("update");

if(s1.equals("Update_PS_Detials"))
{
String s=""+session.getAttribute("idsearched");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("update policestation set name=?,Address=?,station_incharge_uid=?,Contact_No=? where stationid=?");
ps.setString(1,request.getParameter("stationname"));
ps.setString(2,request.getParameter("address"));
ps.setString(3,request.getParameter("stationinchargeuid"));
ps.setString(4,request.getParameter("stationcontactnumber"));
ps.setString(5,s);
int i=ps.executeUpdate();
response.sendRedirect("index_admin.html");
}
catch(Exception e)
{
e.printStackTrace();
}
}
else
{
String s=""+session.getAttribute("uidsearched");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("update incharge set name=?,username=?,password=?,contact_no=? where uid=?");
ps.setString(1,request.getParameter("name"));
ps.setString(2,request.getParameter("username"));
ps.setString(3,request.getParameter("password"));
ps.setString(4,request.getParameter("contact_no"));
ps.setString(5,s);
int i=ps.executeUpdate();
response.sendRedirect("index_incharge.html");
}
catch(Exception e)
{
e.printStackTrace();
}
}
%>