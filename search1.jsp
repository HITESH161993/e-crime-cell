<%@page import="java.sql.*"  import="java.io.*" session="true"%>
<!DOCTYPE HTML>
<html>
<head>
  <title>Register A Station</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
<div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index_admin.html">Crime Management<span class="logo_colour"> E-Cell</span></a></h1>
		  <a href="logout.jsp"><img src="images/download.jpg" width="200px" height="80px" align="right"/></a>
          <h2>The Police Station Which is at one click Distance</h2>
        </div>
      </div>
      <nav>
        <div id="menu_container">
          <ul class="sf-menu" id="nav">
            <li><a href="index_admin.html">Home</a></li>
            <li><a href="register_a_station.html">Register A Station</a></li>
            <li><a href="search.jsp">Update Station Detials</a></li>
            <li><a href="search2.jsp?which='one'">Delete A Station</a></li>
            <li><a href="register_an_incharge.html">Register An Incharge</a></li>
			<li><a href="search1.jsp">Update An Incharge</a></li>
			<li><a href="search2.jsp?which='two'">Delete An Incharge</a></li>
		  </ul>
          <p>&nbsp;</p>
        </div>
      </nav>
    </header>
	
    <div id="site_content">
	<br><br><br>
      <div id="sidebar_container">
        <div class="sidebar">
          <h3>Latest News</h3>
          <h4>New Feature Launched</h4>
          <h5>June 26th, 2015</h5>
          <p>Now you can leave your complian in the compliant window.<br /><a href="#">Read more</a></p>
        </div>
        <div class="sidebar">
          <h3>Useful Links</h3>
          <ul>
            <li><a href="#">Missings</a></li>
            <li><a href="#">Most Wanted</a></li>
            <li><a href="#">Complain Window</a></li>
          </ul>
        </div>
      </div>
      <div class="content">
        <h1 style="margin: 15px 0 0 0;">&nbsp;</h1>
        <h2 align="center"> Search Station here</h2>
        <p>&nbsp; </p>
       <form action=""  method="post">
         <div class="form_settings">
            <p> Enter the Incharge UID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" name="uidsearched" />
            </p>
            <p>&nbsp;</p>
            <p style="padding-top: 15px"><span>&nbsp;</span>
              <input class="submit" type="submit" name="button2" value="Search" />
            </p>
         </div>
        </form>
	
	
<%!	
int i=0;	
%>		
<%
Connection con;
PreparedStatement ps;
ResultSet rs;   
String s=request.getParameter("uidsearched");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:project_cell");
ps=con.prepareStatement("select * from incharge where uid=?");
ps.setString(1,s);
rs=ps.executeQuery();
if(rs.next())
{
System.out.println("Test");
session.setAttribute("uidsearched",s);
response.sendRedirect("update2.jsp");
}
else
{
System.out.println("1   "+i);
if(i>0)
{
System.out.println("Entered in the if block");
%>

<h5>No Such  Record Found!!!!</h5>

<%
}
i++;
System.out.println("2   "+i);
}
ps.close();
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>		
		
		
		 </div>
    </div>
  <footer>
      <p>Copyright &copy;Golden_Heights Technologies </p>
    </footer>
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>

<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
