<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" %>
<%
if(session.getAttribute("username")==null)
response.sendRedirect("index.jsp");
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
<form action="" method=post>    
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
<%
if( session.getAttribute("username")==null)
{
%>
<a style="color:'maroon'" href=login.jsp>Login Here</a><br>
<%
}
else
{
%>
<a style="color:'maroon'" href=logout.jsp>Logout Here</a><br>
<%
}%>
<br><a  style="color:'maroon'" href="register.jsp"> Register Here</a>

</div>
</center>
</div>
 
        <center>
<%
			
			Connection c=null;
			Statement st=null;
			ResultSet rs=null;
			int i=0,j=0;
if(request.getParameter("btnadd")!=null)
{			
		
		String user=(String)session.getAttribute("username");
		String metal=request.getParameter("metal");
		String subtype=request.getParameter("subtype");
		String pname=request.getParameter("pname");
		String wt=request.getParameter("wt");
		String amt=request.getParameter("amt");
		
		try
		{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		c=DriverManager.getConnection("jdbc:odbc:jweldsn");
		st=c.createStatement();
			
			//if(password1.equals(repassword1))
			{
				st.executeUpdate("insert into ProductOrder(orderdate,username,productname,metal,subtype,wt,amt) values('"+new java.util.Date()+"','"+user+"','"+pname+"','"+metal+"','"+subtype+"',"+wt+","+amt+")");
out.println("<h2>Order Saved</h2>");
				
				c.close();
			}
			
			
		}catch(Exception e){
out.println(e);
}	
}

%>

        <font color=green>
        <h1>Confirmation</h1></font>

            <table align="center" border=1 style="color:'maroon'" bordercolor=maroon width=500px cellspacing=10px>
                <tr>
                    <td colspan="4">
                    <center>
                       
                                                       </center>
                    </td>
                </tr>
                <tr align=center>
                    <td>
Metal  Name: 
                       
                    </td>
                    <td>
                      <%=request.getParameter("metal")%><input type=hidden name=metal value='<%=request.getParameter("metal")%>'>
                    </td>
                 </tr>
 <tr align=center>
                    <td>
Category: 
                       
                    </td>
                    <td>
                      <%=request.getParameter("subtype")%><input type=hidden name=subtype value='<%=request.getParameter("subtype")%>'>
                    </td>
                 </tr>
 <tr align=center>
                    <td>
Product Name: 
                       
                    </td>
                    <td>
                      <%=request.getParameter("pname")%><input type=hidden name=pname value='<%=request.getParameter("pname")%>'>
                    </td>
                 </tr>
 <tr align=center>
                    <td>
Weight: 
                       
                    </td>
                    <td>
                      <%=request.getParameter("wt")%><input type=hidden name=wt value='<%=request.getParameter("wt")%>'>
                    </td>
                 </tr>
 <tr align=center>
                    <td>
Amount: 
                       
                    </td>
                    <td>
                      <%=request.getParameter("amt")%><input type=hidden name=amt value='<%=request.getParameter("amt")%>'>
                    </td>

                 </tr>
 <tr align=center>
                    <td>
<input type=button onClick="history.back()" value=Back>
                       
                    </td>
                    <td>
                      <input type=submit value=Confirm name=btnadd>
                    </td>
                 </tr>
            </table>
<br><br><br><br><br><br>
    </center>
    </div>
    </form>
    </center>
</body>
</html>
