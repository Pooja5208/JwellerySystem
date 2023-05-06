<%@page language="Java" import="java.sql.*" %>
<html>

<head id="Head1" runat="server">

<title>Reports</title>
</head>

<body link=white alink=white vlink=white  style="background-image: url('../Images/bg.JPG'); width: 71%; position: fixed; height:auto; top: -65px; left: 10px; text-align:justify; font-family: 'Arial Narrow'; color: #800000; font-weight: bold;">
<center>
<div style="width:70%; border:solid 1px; border-color=#aa0000; height: 100%">
<jsp:include page="top.jsp"/>
<br><br>

		
		<table border="0" cellspacing="0" cellpadding="0" width="421">
			<tr>
				
								<td align=center style="font-family: Verdana; color: #FFFFFF; font-size: 12pt; padding-left: 10px; background-color: #aa0000" height="40">
				    Reports</td>
			</tr>
			<tr>
				<td>
<table border=1 bordercolor='maroon' width=100% style="color:maroon">
<tr align=center bgColor=pink>
<td>
			
<a href="showreports.jsp?tablename=typemaster" target="_blank" style="color:'maroon'">Type Master Report</a></td></tr>
<tr align=center bgColor=pink>
<td>
<a href="showreports.jsp?tablename=subtypemaster" target="_blank" style="color:'maroon'">SubType Master Report</a>
</td>
</tr>
<tr align=center bgColor=pink><td>
<a href="showreports.jsp?tablename=productmaster" target="_blank" style="color:'maroon'">Product Master Report</a>
</td>
</tr>
<tr align=center bgColor=pink>
<td>
<a href="showreports.jsp?tablename=register" target="_blank" style="color:'maroon'">Registration Report</a></td>
</tr>
<tr align=center bgColor=pink>
<td>
<a href="showreports.jsp?tablename=productorder" target="_blank" style="color:'maroon'">Order Report</a></td>
						</tr>
						
						</table>
									
				</td>
			</tr>
		</table>

<br>
</div>
</center>
</body>

</html>