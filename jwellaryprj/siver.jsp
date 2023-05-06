<%@page language="Java" import="java.sql.*" %>
<%
Connection cn=null;
Statement st=null,st1=null;
ResultSet rs=null;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
cn=DriverManager.getConnection("jdbc:odbc:jweldsn");
st=cn.createStatement();
st1=cn.createStatement();
}
catch(Exception ex)
{
  out.println(ex);
}
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Silver</title>
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
<body link=white vlink=white alink=white>
<center>    <form id="form1" runat="server">
    
    <div style="background-image: url('Images/bg.JPG'); width: 71%; position: fixed; height:auto; top: -65px; left: 10px; text-align:justify; font-family: 'Arial Narrow'; color: #800000; font-weight: bold;">
<br>
<center>
<div  style="background-color:maroon;width=100%; height=40px">

</div>
</center>
<div style="float:left;text-align:center">
<img align="bottom" 
            src="Images/grt-gold-jewellers-logo.png"/>
<br><br>
<center>
       
<table style="text-align:center" width="150px" cellspacing=10px>
<%
   try
{
rs=st.executeQuery("select distinct subtypename from subtypemaster");
while(rs.next())
{
String str=rs.getString(1);
%>
<tr bgcolor="maroon" align=center style="color:white">
<td onMouseOver="this.bgColor='gold'" onMouseOut="this.bgColor='maroon'">
<%
out.println("<a href=silver.jsp?subtypename="+str+">"+str+"</a>");
%>
</td>
</tr>

<%
}
}
catch(Exception ex)
{
  out.println(ex);
}
%>

</table>
<div style="border:1px solid">
Login Here<br>
<form action="" method=post>
<br>
<table>
<tr align=center><td>Username<br><input type=text name=txtuser size=15></td>
</tr>
<tr align=center>
<td>Password<br><input type=text name=txtpass size=15></td>
</tr>
<tr align=center>
<td><input type=submit name=btnadd></td>
</tr>
</table>
If not registered,<br><a href="register.jsp" style="color:maroon"> Register Here</a>
</form>
</div>
</center>
</div>
 
    
    <br>    
        
                             <img Height="200px" src="Images/gg.jpg" 
                            Width="200px" align=left />
<%
try
{


{

ResultSet rs1=st.executeQuery("select * from ProductMaster where subtype like('"+request.getParameter("subtypename")+"') and typename like 'si%'");
out.println("<center><h2>"+request.getParameter("subtypename")+"</h2></center>");
out.println("<table border=1 style=\"color:'maroon'\" bordercolor='maroon'>");int i=0;
out.println("<tr>");
while(rs1.next())
{
String pname=rs1.getString("ProductName");
String met=rs1.getString("typename");
ResultSet rs2=st1.executeQuery("select typerate from typemaster where typename='"+met+"'");
double rate=0;
if (rs2.next())
rate=rs2.getDouble(1);
String path= rs1.getString("imagepath");
String subt=rs1.getString("subtype");
String wt=rs1.getString("weight");
double amt=Double.parseDouble(wt)*rate;
%>

<td><img height=150 width=150 src='<%=path%>'><br>
Metal: <%=met%><br>
Subtype: <%=subt%><br>
ProductName: <%=pname%><br>
Weight: <%=wt%>
<br>Amount: <%=amt%>
<br><a style="color:red" href=order.jsp?metal=<%=met%>&subtype=<%=subt%>&pname=<%=pname%>&wt=<%=wt%>&amt=<%=amt%>>Order Now</a>
</td>

<% 
i++;
if(i==4)
{
out.println("</tr><tr>");
i=0;
}
}
out.println("</table>");
}
}
catch(Exception ex)
{
  out.println(ex);
}
%>
     
    
    
</body>
</html>
