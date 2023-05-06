
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
<center>    <form id="form1" runat="server">
    
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
        <table style="color:'maroon'">
<tr>
<td>
        <h2>Contact Us</h2>
           G. R. T.,<br>
136, Usman Road,<br>
T.Nagar, Chennai - 600 017.<br>
New Showroom 21, Coats Road(North Usman Road),<br>
T.Nagar, Chennai - 600 017.<br>
<br>
</td></tr><tr><td>
<h2>About Us</h2>
Thank You for visiting our online initiative.<br>
We truly appreciate your online visit. Please feel <br>
free to tell us exactly how you feel about our <br>
jewellery, service, in-store ambience or anything<br>
you wish. Including information you may need.<br>
Our Customer Service people will be delighted to<br>
help you out. <br>
</td></tr>
    </table>
<br><br><br><hr>
This Website is developed by-   Snehal Ghorpade, Priyanka Nikam,Meghana Nisalkar<br><br>
    </center>
    </div>
    </form>
    </center>
</body>
</html>
