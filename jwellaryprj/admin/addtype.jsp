﻿<%@page language="Java" import="java.sql.*" %>

<html>


<head id="Head1" runat="server">

<title>Add Type</title>
<style type="text/css">
tr.d0 td{
background-color: #66ffff;
}
tr.d1 td{
background-color:#00ccff;
}
</style>
<script type="text/javascript">
function validate()
{
	var name1=document.getElementById("txtname").value;
	var address1=document.getElementById("txtdesc").value;
	var nation1=document.getElementById("txtrate").value;
		var ch=document.getElementById("txtch").value;
	var submitOK="true";	
	if (name1=="") 
	{
		alert("TypeName should not be left blank!");
 		return false;
	}
	else
	{
		if(!(isNaN(name1)))
		{
			alert("Name must not contain digits");
			 		return false;
		}

	}
	
	if( nation1=="" )
	{
		alert("Rate can not be blank");
		 		return false;
		
	}
	else if((isNaN(nation1)))
	{
	alert("Rate must not contain charactes");
			 		return false;
		
	}
	if(ch=="")
	{
		alert("Charges can not be blank");
		 		return false;
		
	}
	else if((isNaN(ch)))
	{
	alert("Charges must not contain charactes");
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
Connection cn=null;
Statement st=null;
ResultSet rs=null;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
cn=DriverManager.getConnection("jdbc:odbc:jweldsn");
st=cn.createStatement();
if(request.getParameter("btnadd")!=null)
{
   String tn=request.getParameter("txtname");
   String td=request.getParameter("txtdesc");
   String tr=request.getParameter("txtrate");
   String tch=request.getParameter("txtch");
if( tn!=null && td!=null && tr!=null && tch !=null)
{
int ans=  st.executeUpdate("Insert into TypeMaster(TypeName,TypeDesc,TypeRate,WorkerCharges) values('"+tn+"','"+td+"',"+tr+","+tch+")");
if(ans!=0)
out.println("<center><h2><font color=green>Type Saved Successfully</font></h2></center>");
else
out.println("<center><h2><font color=red>Problem Occured ! Type Not Saved </font></h2></center>");
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
				    Add Type</td>
			</tr>
			<tr>
				<td>
				<form name="formX" id="formX" method="post" style="margin:0px;" action="" onSubmit="return validate()">
					<table border="1" style="font-family: Verdana; font-size: 9pt" width="100%" cellspacing="0" cellpadding="5" bordercolor=#aa0000>
						<tr>
							<td width="100" align="right">Metal Name:</td>
							<td><input type="text" name="txtname" size="20"/></td>
						</tr>
						<tr>
							<td width="100" align="right">Description:</td>
							<td><input type="text" name="txtdesc" size="20"/></td>
						</tr>
						<tr>
							<td width="100" align="right">Rate :</td>
							<td><input type="text" name="txtrate" size="20"/></td>
						</tr>
						<tr>
							<td width="100" align="right">Worker Charges:</td>
							<td><input type="text" name="txtch" size="20"/></td>
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
<center><h3>List of Types</h3>
<table width="80%" border=1 bordercolor=green>
<tr bgcolor=#ff99cc>
<th>Type Id</th><th>Type Name</th><th>Description</th><th>Rate</th><th>Charges</th>
</tr>
<%
try
{
int i=0;
rs=st.executeQuery("select * from typemaster");
while(rs.next())
{
if(i==2)
i=0;
   out.println("<tr align=center class=\"d"+i+"\">");
i++;
out.println("<td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td>");
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
