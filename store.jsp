<%@page import="java.sql.*"  import="java.io.*"  session="true"%>

<%
Connection con;
PreparedStatement ps;
ResultSet rs; 
String s1=request.getParameter("where");

if(s1.equals("one"))
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("insert into fir values(?,?,?,?,?,?,?)");
ps.setString(1,request.getParameter("firno"));
ps.setString(2,request.getParameter("firdate"));
ps.setString(3,request.getParameter("firvictim"));
ps.setString(4,request.getParameter("firoffender"));
ps.setString(5,request.getParameter("firipc"));
ps.setString(6,request.getParameter("firlocation"));
ps.setString(7,request.getParameter("firdesc"));
int i=ps.executeUpdate();
response.sendRedirect("index_incharge.html");
}
catch(Exception e)
{
e.printStackTrace();
}
}
else if(s1.equals("two"))
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("insert into missing values(?,?,?,?,?,?,?,?)");
ps.setString(1,request.getParameter("a"));
ps.setString(2,request.getParameter("b"));
ps.setString(3,request.getParameter("c"));
ps.setString(4,request.getParameter("d"));
ps.setString(5,request.getParameter("e"));
ps.setString(6,request.getParameter("f"));
ps.setString(7,request.getParameter("g"));
ps.setString(8,request.getParameter("h"));
int i=ps.executeUpdate();
response.sendRedirect("index_incharge.html");
}
catch(Exception e)
{
e.printStackTrace();
}
}
else
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("insert into wanted values(?,?,?,?,?)");
ps.setString(1,request.getParameter("a"));
ps.setString(2,request.getParameter("b"));
ps.setString(3,request.getParameter("c"));
ps.setString(4,request.getParameter("d"));
ps.setString(5,request.getParameter("e"));
int i=ps.executeUpdate();
response.sendRedirect("index_incharge.html");
}
catch(Exception e)
{
e.printStackTrace();
}
}
%>
