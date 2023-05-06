<%@page import="java.sql.*"%>
<%
String tablename=request.getParameter("tablename");
%>
<%
Connection cn=null;
Statement st=null;
ResultSet rs=null;
int colcnt=0;
String columns[]=null;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
cn=DriverManager.getConnection("jdbc:odbc:jweldsn");
st=cn.createStatement();
rs=st.executeQuery("select * from "+tablename);
ResultSetMetaData rst=rs.getMetaData();
colcnt=rst.getColumnCount();
columns=new String[colcnt];
int i=0;
for(i=0;i<colcnt;i++)
{
  columns[i]=rst.getColumnLabel(i+1);
}
}
catch(Exception ex)
{
  out.println(ex);
}
%>

<html>
<body>
<input type=Button value=Print onClick="window.print()">
<center>
<h1><%=tablename%> Report</h1>
<table width="80%" border=1 bordercolor=green>
<tr bgcolor=#ff99cc>
<%
for(int i=0;i<colcnt;i++)
out.println("<th>"+columns[i]+"</th>");
%>
</tr>
<%
try
{
int i=0;
while(rs.next())
{
out.println("<tr>");
for(i=1;i<=colcnt;i++)
out.println("<td>"+rs.getString(i)+"</td>");
out.println("</tr>");
}
}
catch(Exception ex)
{
  out.println(ex);
}
%>
</table>
