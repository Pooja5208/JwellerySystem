<%@page language="Java" import="java.sql.*,java.io.*" %>
<%
Connection cn=null;
Statement st=null;
ResultSet rs=null;
String p="",s1="";
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

<title>Add Product</title>
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
	var type=document.getElementById("cmbtype").value;
	var subtype=document.getElementById("cmbsubtype").value;
		var ch=document.getElementById("txtwt").value;
	var submitOK="true";	
	if (name1=="") 
	{
		alert("Product Name should not be left blank!");
 		return false;
	}
		
	if(type=="" )
	{
		alert("Select Type");
		 		return false;
		
	}
if(subtype=="" )
	{
		alert("Select SubType");
		 		return false;
		
	}
if(ch=="" )
	{
		alert("Weight can not be blank");
		 		return false;
		
	}
	else if((isNaN(nation1)))
	{
	alert("Weight must not contain charactes");
			 		return false;
		
	}
return true;

}
</script>

</head>

<body link=white alink=white vlink=white  style="background-image: url('../Images/bg.JPG'); width: 71%; position: fixed; height:auto; top: -65px; left: 10px; text-align:justify; font-family: 'Arial Narrow'; color: #800000; font-weight: bold;">
<%
p=request.getParameter("typename");
%>
<center>
<div style="width:70%; border:solid 1px; border-color=#aa0000; height: 100%">
<jsp:include page="top.jsp"/>
<%
try
{
if(request.getParameter("btnadd")!=null)
{
   String ti=request.getParameter("cmbtype");
   String sti=request.getParameter("cmbsubtype");
   String stn=request.getParameter("txtname");
   String stw=request.getParameter("txtwt");
if( ti!=null && sti!=null && stn!=null&&stw!=null)
{
String filename=(String)session.getAttribute("filename");
int ans=  st.executeUpdate("Insert into ProductMaster(ProductName,TypeName,SubType,Weight,ImagePath) values('"+stn+"','"+ti+"','"+sti+"',"+stw+",'"+"Images\\"+filename+"')");
if(ans!=0)
out.println("<center><h2><font color=green>Product Saved Successfully</font></h2></center>");
else
out.println("<center><h2><font color=red>Problem Occured ! Product Not Saved </font></h2></center>");




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
				    Add Product</td>
			</tr>
			<tr>
				<td>
				<form name="formY" id="formY" method="post" style="margin:0px;" action="fileupload.jsp" ENCTYPE="MULTIPART/FORM-DATA">
					<table border="1" style="font-family: Verdana; font-size: 9pt" width="100%" cellspacing="0" cellpadding="5" bordercolor=#aa0000>
<tr align=center>

							<td width="100" align="right">Image:</td>
							<td><input type="file" name="filename " size="20"/>
<input type=submit value=Upload></td>
</tr>

</table>
</form>
<form name="formX" id="formX" method="post" style="margin:0px;" action=""  onsubmit="return validate()">

<table border="1" style="font-family: Verdana; font-size: 9pt" width="100%" cellspacing="0" cellpadding="5" bordercolor=#aa0000>
						<tr>
							<td width="100" align="right">Metal Name:</td>
						        <td width="100">
							<select name="cmbtype">
<option value="">--Select--</option>
<%
try
{
 rs=st.executeQuery("select * from TypeMaster");
while(rs.next())
{
String temp=rs.getString("TypeName");
%>
<option value='<%=temp%>'><%=temp%></option>
<%
}
}
catch(Exception ex)
{
out.println(ex);
}%>
</select>						
</td>
						</tr>
						<tr>
							<td width="100" align="right">Sub Type:</td>
<td>
<select name=cmbsubtype>
<option value="">--Select--</option>
<%
try
{
 rs=st.executeQuery("select distinct SubTypeName from SubTypeMaster");

while(rs.next())
{
String temp=rs.getString("SubTypeName");
out.println("<option value="+temp+">"+temp+"</option>");

}
out.println("</select>");
}
catch(Exception ex)
{
out.println(ex);
}%>
</script>

</td>

						</tr>
						
						<tr>
							<td width="100" align="right">Product Name:</td>
							<td><input type="text" name="txtname" size="20"/></td>
						</tr>
<tr>
							<td width="100" align="right">Weight:</td>
							<td><input type="text" name="txtwt" size="20"/></td>
						</tr>
						
							<td colspan=2 align=center>
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
<center><h3>List of Products</h3>
<table width="80%" border=1 bordercolor=green>
<tr bgcolor=#ff99cc>
<th>Metal Name</th><th>Sub Type </th><th>Product Id</th><th>Product Name</th><th>Weight</th><th>Image</th>
</tr>
<%
try
{
int i=0;
rs=st.executeQuery("select * from productmaster");
while(rs.next())
{
if(i==2)
i=0;
   out.println("<tr align=center class=\"d"+i+"\">");
i++;
out.println("<td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><img src=..\\"+rs.getString(6)+" width=100 height=100></td>");
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