<%@ page language = "java" import = "java.sql.*" %>
		
		
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
<script type="text/javascript">
function validate()
{
	var name1=document.getElementById("name").value;
	var address1=document.getElementById("address").value;
	var nation1=document.getElementById("email").value;
	
	var submitOK="true";	
	if (name1=="") 
	{
		alert("Name should not be left blank!");
 		return false;
	}
	else
	{
		if(!(isNaN(name1)))
		{
			alert("Name must not contain digits");
			 		return false;
		}
		else
		{
			if(name1.length<10)
			{
 				alert("Name must not be less than ten characters");
				 		return false;
			}
		}
	}
	if(address1=="" || address1.length<5)
	{
		alert("Address should not be less tan 5 characters");
		 		return false;
		
	}
	if(nation1.length<4 || nation1=="" )
	{
		alert("Check the Email Id");
		 		return false;
		
	}
	else if(nation1.length>0)
	{
	var emailID=nation1;
		if (echeck("Please enter valid email",emailID.value)==false)
		{
			emailID.value=""
			emailID.focus()
			return false
		}
	}
	if(username1=="" || username1.length<4)
	{
		alert("Feedback can nit be blank");
		 		return false;
		
	}
		return true;

}

function echeck(msg,str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert(msg);
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert(msg);
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert(msg);
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert(msg);
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert(msg);
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert(msg);
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert(msg);
		    return false
		 }

 		 return true					
	}
	
	

</script>





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
Login Here<br>
<form action="" method=post>
<br>
<a style="color:'maroon'" href=login.jsp>Login Here</a><br>
If not registered,<br><a href="register.jsp"> Register Here</a>
</form>
</div>
</center>
</div>
 
        <center>
        
<%
		
			
			Connection c=null;
			Statement st=null;
			ResultSet rs=null;
			int i=0,j=0;
if(request.getParameter("btnsub")!=null)
{			
		
		String name1=request.getParameter("name");
		String address1=request.getParameter("address");
		String email1=request.getParameter("email");
		String feed=request.getParameter("feed");

		try
		{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		c=DriverManager.getConnection("jdbc:odbc:jweldsn");
		st=c.createStatement();
			
//			if(password1.equals(repassword1))
			{
				st.executeUpdate("insert into feedback values('"+name1+"','"+address1+"','"+email1+"','"+feed+"')");
out.println("<script language=javascript>alert('Registration is successful')");
				response.sendRedirect("index.jsp");	
				c.close();
			}
			
		}catch(Exception e){
out.println(e);
}	
}
		%>
        
<form onsubmit="return validate()" action="" method="post">
<h2>Feedback</h2>
<table cellpadding=5>
	<tr><td>Name</td>
		<td><input name="name" type="text" name="name"></td>
	</tr>
    <tr><td>Address</td>
		<td><textarea name="address" name="address"></textarea></td>
    </tr><tr> 
		<td>Email</td>
		<td><input name="email" type="text"></td>
    </tr>
<tr> 
		<td>Feedback</td>
		<td><textarea name=feed rows=10 cols=20></textarea></td>
    </tr>
	<tr align=center>
	  <td colspan=2><input type=submit value=submit name="btnsub"></td>
	</tr>
  </table>
    </form>  

    </center>
    </div>
    </form>
    </center>
</body>
</html>
