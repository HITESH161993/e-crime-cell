<@%page import ="java.sql.* session="false"%>
<html>
<body>
<%
HttpSession session1=request.getSession(false);

if(session1!=null)
{
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
session1.invalidate();
response.sendRedirect("index_user.html");
} 
%>
</body>
</html>