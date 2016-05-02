<%@page import="java.sql.*"  import="java.io.*"%>
<html>
<head>
<style type="text/css">
<!--
.body1
{
background-image:url("images/flow.jpg");
background-color:black;
color:cyan;
background-size: 100% 100%;
vertical-align:top;
}
.hhh
{
font-size:18px;
font-style:italic;
font-style:bold;
}
.hh
{
font-size:30px;
font-style:italic;
font-style:bold;
}
-->
</style>

<title>Extra Links</title>
</head>
<body class="body1">

    <div class="content">
        <h1 style="margin: 15px 0 0 0;">&nbsp;</h1>
        <h2 align="center"> Search Person here</h2>
        <p>&nbsp; </p>
      <fieldset>
	   <form  action="" method="post" class="hhh">
         <div class="form_settings">
            <p> Enter the Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" name="person" />
            </p>
            <p>&nbsp;</p>
            <p style="padding-top: 15px"><span>&nbsp;</span>
              <input class="submit" type="submit" name="buttoni" value="Search_by_Name" />
            </p>
         </div>
	</fieldset>
        </form>
<marquee class="hh">List of the Persons</marquee>

<%! 
Connection con;
PreparedStatement ps;
ResultSet rs; 
%>
<%
String w=request.getParameter("what");
String p=request.getParameter("person");
if(w.equals("missing"))
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
if(p!=null)//this
{
System.out.println("if");
ps=con.prepareStatement("Select * from missing where Name like '%"+p+"%'");
rs=ps.executeQuery();
%>
<table cellspacing="5" border="5" cellpadding="5" class="hhh">
<tr><td width="155">Photo</td>
<td width="30">MID</td>
<td width="50">UID</td>
<td width="82">Name</td>
<td width="213">Address</td>
<td width="268">Description</td>
<td width="113">Missing till</td>
<td width="215">Last Seen At</td>
<td width="134">Contact No</td>
</tr>
<%
while(rs.next())
{
String sq=rs.getString(1);
String path="images/"+sq+".jpg";
%>
<tr><td width="150"><img src="<%=path%>" width="150px" height="90px"/></td><td width="37"><%=sq%></td><td width="51"><%=rs.getString(2)%></td><td width="75"><%=rs.getString(3)%></td><td width="216"><%=rs.getString(4)%></td><td width="267"><%=rs.getString(5)%></td><td width="118"><%=rs.getString(6)%></td><td width="212"><%=rs.getString(7)%></td><td width="130"><%=rs.getString(8)%></td></tr>
<%
}%>
</table>
<%}//end of the if block
else
{
System.out.println("else1");
ps=con.prepareStatement("Select * from missing");
rs=ps.executeQuery();
%>
<table cellspacing="5" border="5" cellpadding="5" class="hhh">
<tr><td width="150">Photo</td>
<td width="37">MID</td>
<td width="51">UID</td>
<td width="75">Name</td>
<td width="216">Address</td>
<td width="267">Description</td>
<td width="118">Missing till</td>
<td width="212">Last Seen At</td>
<td width="130">Contact No</td>
</tr>
<%
while(rs.next())
{
String sq=rs.getString(1);
String path="images/"+sq+".jpg";
%>
<tr><td width="150"><img src="<%=path%>" width="150px" height="90px"/></td><td width="37"><%=sq%></td><td width="51"><%=rs.getString(2)%></td><td width="75"><%=rs.getString(3)%></td><td width="216"><%=rs.getString(4)%></td><td width="267"><%=rs.getString(5)%></td><td width="118"><%=rs.getString(6)%></td><td width="212"><%=rs.getString(7)%></td><td width="130"><%=rs.getString(8)%></td></tr>
<%
}%>
</table>
<%}//end of else block
}//end of try block
catch(Exception e)
{
e.printStackTrace();
}
}//end of the main if block
%>
<%
if(w.equals("wanted"))
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
if(p!=null)//this
{
System.out.println("if");
ps=con.prepareStatement("Select * from wanted where name like '%"+p+"%'");
rs=ps.executeQuery();
%>

<table cellspacing="5" border="5" cellpadding="5" class="hhh">
<tr><td width="150">Photo</td>
<td width="37">Criminal_ID</td>
<td width="51">UID</td>
<td width="75">Name</td>
<td width="267">Description</td>
<td width="118">Prize</td>
</tr>
<%
while(rs.next())
{
String sq=rs.getString(1);
String path="images/"+sq+".jpg";
%>
<tr><td width="150"><img src="<%=path%>" width="150px" height="90px"/></td><td width="37"><%=sq%></td><td width="51"><%=rs.getString(2)%></td><td width="75"><%=rs.getString(3)%></td><td width="267"><%=rs.getString(4)%></td><td width="118"><%=rs.getString(5)%></tr>
<%
}%>
</table>
<%}//end of the if block
else
{
System.out.println("else2");
ps=con.prepareStatement("Select * from wanted");
rs=ps.executeQuery();
%>
<table cellspacing="5" border="5" cellpadding="5" class="hhh">
<tr><td width="150">Photo</td>
<td width="37">Criminal_ID</td>
<td width="51">UID</td>
<td width="75">Name</td>
<td width="267">Description</td>
<td width="118">Prize</td>
</tr>
<%
while(rs.next())
{
String sq=rs.getString(1);
String path="images/"+sq+".jpg";
%>
<tr><td width="150"><img src="<%=path%>" width="150px" height="90px"/></td><td width="37"><%=sq%></td><td width="51"><%=rs.getString(2)%></td><td width="75"><%=rs.getString(3)%></td><td width="267"><%=rs.getString(4)%></td><td width="118"><%=rs.getString(5)%></tr>
<%
}%>
</table>
<%}//end of else block
}//end of try block
catch(Exception e)
{
e.printStackTrace();
}
}//end of the main if block
%>
</body>
</html>
