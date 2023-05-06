<%@page language="Java" import="java.sql.*" %>
<%
Connection cn=null;
Statement st=null;
ResultSet rs=null;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
cn=DriverManager.getConnection("jdbc:odbc:jweldsn");
st=cn.createStatement();
}
catch(Exception ex)
{
  out.println(ex);
}
%>

<html>

<head id="Head1" runat="server">

<title>Add Sub Type</title>
<style type="text/css">
tr.d0 td{
background-color: #ffffcc;
}
tr.d1 td{
background-color:#ffff99;
}
</style>
<script type="text/javascript">
function validate()
{
	var name1=document.getElementById("txtname").value;
	var address1=document.getElementById("txtdesc").value;


	if (name1=="") 
	{
		alert("Sub TypeName should not be left blank!");
 		return false;
	}
		
	return true;

}
</script>

</head>

<body link=white alink=white vlink=white  style="background-image: url('../Images/bg.JPG'); width: 71%; position: fixed; height:auto; top: -65px; left: 10px; text-align:justify; font-family: 'Arial Narrow'; color: #800000; font-weight: bold;">
<center>
<div style="width:70%; border:solid 1px; border-color=#aa0000; height: 100%">
<jsp:include page="top.jsp"/>
<%
try
{
if(request.getParameter("btnadd")!=null)
{

   String stn=request.getParameter("txtname");
   String std=request.getParameter("txtdesc");

if(std!=null && stn!=null)
{
int ans=  st.executeUpdate("Insert into SubTypeMaster(SubTypeName,SubTypeDesc) values('"+stn+"','"+std+"')");
if(ans!=0)
out.println("<center><h2><font color=green>SubType Saved Successfully</font></h2></center>");
else
out.println("<center><h2><font color=red>Problem Occured ! Sub Type Not Saved </font></h2></center>");
}

}

}
catch(Exception ex)
{
  out.println(ex);
}
%>
<br><br>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td align="center">
		<table border="0" cellspacing="0" cellpadding="0" width="421">
			<tr>
				<td width="68" rowspan="2" align="right">
				</td>
				<td width="18" rowspan="2" style="background-image: url('images/dotln.gif'); background-repeat: repeat-y">&nbsp;</td>
				<td style="font-family: Verdana; color: #FFFFFF; font-size: 12pt; padding-left: 10px; background-color: #aa0000" height="40">
				    Add Sub Type</td>
			</tr>
			<tr>
				<td>
				<form name="formX" id="formX" method="post" style="margin:0px;" action="" onsubmit="return validate()">
					<table border="1" style="font-family: Verdana; font-size: 9pt" width="100%" cellspacing="0" cellpadding="5" bordercolor=#aa0000>
						
						<tr>
							<td width="100" align="right">Sub Type Name:</td>
							<td><input type="text" name="txtname" size="20"/></td>
						</tr>
<tr>
							<td width="100" align="right">Description:</td>
							<td><input type="text" name="txtdesc" size="20"/></td>
						</tr>
						<tr align=center>
							<td colspan=2>
							<input type="button" value="Back" name="btnadd0" style="font-family: Tahoma; font-size: 8pt; font-weight: bold; height: 27px; border: 0px; width:98px; color:#FFFFD7; background-image:url('../../Images/btnbg.gif'); background-repeat:no-repeat; background-color: #aa0000;" onclick="history.back()"/>
							
							<input type="submit" value="Save" name="btnadd" style="font-family: Tahoma; font-size: 8pt; font-weight: bold; height: 27px; border: 0px; width:98px; color:#FFFFFF; background-repeat:no-repeat; background-color:#aa0000;"/></td>
						</tr>

						</table>
									</form>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<br>
<center><h3>List of Sub Types</h3>
<table width="80%" border=1 bordercolor=green>
<tr bgcolor=#ff99cc>
<th>Sub Type Id</th><th>Sub Type Name</th><th>Description</th>
</tr>
<%
try
{
int i=0;
rs=st.executeQuery("select subtypeid,subtypename,subtypedesc from subtypemaster");
while(rs.next())
{
if(i==2)
i=0;
   out.println("<tr align=center class=\"d"+i+"\">");
i++;
out.println("<td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td>");
   out.println("</tr>");
}
}
catch(Exception ex)
{
  out.println(ex);
}
%>
</table>
</center>
<br>
</div>
</center>
</body>

</html>