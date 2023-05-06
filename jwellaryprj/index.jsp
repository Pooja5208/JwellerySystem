
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
        
        
            <table align="center" class="style2" style="text-align:justify " cellspacing=20 border=1>
                <tr>
                    <td colspan="4">
                    <center>
                        <img Height="301px" src="Images/gg.jpg" 
                            Width="467px" />
                            </center>
                    </td>
                </tr>
                <tr align=center>
                    <td>
                        <img ID="Image3" runat="server" Height="120px" 
                            src="Images/silversmith-jewellery.jpg" Width="166px" />
                       
                         Right Place for silver jewellery.. 
                                     Click Here to find a gift
                       
                    </td>
                    <td>
                        <img ID="Image4" runat="server" Height="120px" 
                            src="Images/platinum-jewellery.png" Width="166px" /> 
                       
                        Platinum adds more love to life.
                     
                        To search for platinum<br> jewellery <a href="platinum.jsp">click Here</a>
                    </td>
                    <td>
                         <img ID="Image5" runat="server" Height="120px" Width="166px"
                            src="Images/antique-bangles-thumb.jpg" />
                         
                         Anique Jellwery for fasion fascinated people. for gold<br> jewellry <a href="gold.jsp">click here.</a><br />
                       
                    </td>
                    <td>
                       
                        <img ID="Image6" runat="server" src="Images/diamond.jpg" Height="120px" Width="166px" />
                       
                        Dialond Jewellery. Find world&#39;s best diamond jewellry <a href="diamond.jsp">Click here.</a>
                      
                    </td>
                </tr>
            </table>
    </center>
    </div>
    </form>
    </center>
</body>
</html>
