<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" %>
<%
String u="",p="";
u=request.getParameter("username");
p=request.getParameter("password");
if(request.getParameter("btnadd")!=null)
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection cn=DriverManager.getConnection("jdbc:odbc:jweldsn");
   Statement st=cn.createStatement();
   String str="select username,password from register where username='"+u+"' and password='"+p+"'";
   ResultSet rs=st.executeQuery(str);
   if(rs.next())
   {
       session.setAttribute("username",u);
out.println("<script language=\"JavaScript\">alert('You have login successfully');</script>");

    response.sendRedirect("index.jsp");
   }
   else
{

out.println("<script language=\"JavaScript\">alert('Username or password is wrong')</script>");;

response.sendRedirect("index.jsp");
}
}
catch(Exception e)
{
  out.println(e);
}
}
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 20%;
        }
        .style2
        {
           
        }
    </style>
</head>
<body  link=white vlink=white alink=white>
<center>  
    
    <div style="background-image: url('Images/bg.JPG'); width: 71%; position: fixed; height:auto; top: -65px; left: 10px; text-align:justify; font-family: 'Arial Narrow'; color: #800000; font-weight: bold;">
<jsp:include page="top.jsp"/><div style="float:left;text-align:center">
<img align="bottom" 
            src="Images/grt-gold-jewellers-logo.png"/>
<br><br>
<center>
       
<table style="text-align:center" width="150px" cellspacing=10px>
<tr bgcolor="maroon" align=center style="color:white">
<td onMouseOver="this.bgColor='gold'" onMouseOut="this.bgColor='maroon'">
<a href="gold.jsp">GOLD</a>
</td>
</tr>
<tr bgcolor="maroon" align=center style="color:white">
<td onMouseOver="this.bgColor='gold'" onMouseOut="this.bgColor='maroon'">
<a href="silver.jsp">SILVER</a>
</td>
</tr>
<tr bgcolor="maroon" align=center style="color:white">
<td onMouseOver="this.bgColor='gold'" onMouseOut="this.bgColor='maroon'">
<a href="platinum.jsp">PLATINUM</a>
</td>
</tr>
<tr bgcolor="maroon" align=center style="color:white">
<td onMouseOver="this.bgColor='gold'" onMouseOut="this.bgColor='maroon'">
<a href="diamond.jsp">DIAMOND</a>
</td>
</tr>
</table>
<div style="border:1px solid">
<a style="color:'maroon'" href=login.jsp>Login Here</a><br>
<br><a  style="color:'maroon'" href="register.jsp"> Register Here</a>

</div>
</center>
</div>
 
        <center>
        
        
<form action="" method=post>
<br>
<table border=1 bordercolor='maroon'>
<tr>
<td>
<img src="Images/login-image.jpg" height=200 width=200 >
</td>
<td align=center>
<h2>Login</h2>
<table>
<tr align=center><td>Username</td><td><input type=text name=username size=15></td>
</tr>
<tr align=center>
<td>Password</td><td><input type=password name=password size=15></td>
</tr>
<tr align=center>
<td></td>
<td><input type=submit name=btnadd value=Login></td>
</tr>
<tr>
<td colspan=2>

</td>
</tr>
</table>
</td>
</tr>
</table>
</form>
<div style="width:100%">
<marquee behavior=alternate>
<img src="Images/silversmith-jewellery.jpg" height=100 width=100 align=left><img src="Images/diamond_earing.jpg" height=100 width=100 align=left>
<img src="Images/silver-dinner-sets.jpg" height=100 width=100 align=left><img src="Images/diamond_necklase.jpg" height=100 width=100 align=left>
<img src="Images/13.jpg" height=100 width=100 align=left><img src="Images/12.jpg" height=100 width=100 align=left>
<img src="Images/19.jpg" height=100 width=100 align=left><img src="Images/dr-e-12.jpg" height=100 width=100 align=left>
<img src="Images/diamond_rings.jpg" height=100 width=100 align=left><img src="Images/diamond_bangles.jpg" height=100 width=100 align=left>
<img src="Images/new-design-gold-jewels.jpg" height=100 width=100 align=left><img src="Images/diamond_earing.jpg" height=100 width=100 align=left>
</marquee>
</div>    
</center><br>


    </div>

    </center>

</body>
</html>

