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
	var phone1=document.getElementById("phone").value;
	var address1=document.getElementById("address").value;
	var nation1=document.getElementById("email").value;
	var userid1=document.getElementById("userid").value;
	var password1=document.getElementById("password").value;
	var repassword1=document.getElementById("repassword").value;
	var bank=document.getElementById("bank").value;	
	var crno=document.getElementById("crno").value;	
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
	if(isNaN(phone1))
	{
		alert("Phone number must not contain characters");
		 		return false;
		
	}
	else
	{

		if(phone1.length<10 || phone1.length>10)
		{
	  		alert("Phone number must not contain digits more or less than 10");
			 		return false;
		
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
		alert("Username must be atleast 4 characters long");
		 		return false;
		
	}
	if(bank=="")
	{
		alert("Bank field cannot be left blank");
		 		return false;
		
	}
	if(crno=="")
	{
		alert("Credit Card No field cannot be left blank");
		 		return false;
		
	}
	if(password1=="")
	{
		alert("Password field cannot be left blank");
		 		return false;
		
	}
	if(password1=="")
	{
		alert("Password field cannot be left blank");
		 		return false;
		
	}
	else
	{
		if(password1!=repassword1)
		{
			alert("Please ckeck the password entered");
			 		return false;
		
		}
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
		String phone1=request.getParameter("phone");
		String email1=request.getParameter("email");
		String userid1=request.getParameter("userid");
		String password1=request.getParameter("password");
		String repassword1=request.getParameter("repassword");

		String nation1=request.getParameter("bank");
		String crno=request.getParameter("crno");


		//out.println("\n"+name1+date1+gender1+phone1+month1+year1+userid1+password1+repassword1);
		try
		{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		c=DriverManager.getConnection("jdbc:odbc:jweldsn");
		st=c.createStatement();
			
			if(password1.equals(repassword1))
			{
				st.executeUpdate("insert into register values('"+name1+"','"+address1+"','"+phone1+"','"+email1+"','"+userid1+"','"+password1+"','"+nation1+"','"+crno+"')");
out.println("<script language=javascript>alert('Registration is successful')");
				response.sendRedirect("index.jsp");	
				c.close();
			}
			
			else
			{

			}
		}catch(Exception e){
out.println(e);
}	
}
		%>
        
<form onsubmit="return validate()" action="" method="post">
<h2>Register Here</h2>
<table cellpadding=5>
	<tr><td>Name</td>
		<td><input name="name" type="text" name="name"></td>
	</tr>
    <tr><td>Phone No.</td>
		<td><input name="phone" type="text" name="phone"></td>
    </tr>
    <tr><td>Address</td>
		<td><textarea name="address" name="address"></textarea></td>
    </tr><tr> 
		<td>Email</td>
		<td><input name="email" type="text"></td>
    </tr>
<tr> 
		<td>Bank Name</td>
		<td><input name="bank" type="text"></td>
    </tr>
<tr> 
		<td>Credit Card No</td>
		<td><input name="crno" type="text"></td>
    </tr>
<tr> 
 
		<tr><td><center>Login Details</center></td><tr>
		<td>UserName</td>
		<td><input name="userid" type="text" name="username"></td>
    </tr>
		<tr> 
		<td>Password</td>
		<td><input name="password" type="password" name="password">
		</td>
    </tr>
		<tr> 
		<td>Retype Password</td>
		<td><input name="repassword" type="password" name="repassword">
		</td>
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
