<%@page language="Java" import="java.sql.*" %>

<html>


<head id="Head1" runat="server">
<script type="text/javascript">
<!--
var image1=new Image();
image1.src="../Images/gg.jpg";
var image2=new Image();
image2.src="../Images/new-design-gold.jpg";
var image3=new Image();
image3.src="../Images/diamond-jewellery-collections.jpg";
var image4=new Image();
image4.src="../Images/platinum-jewellery.png";
//-->
</script>

<title>Add Type</title>

</head>

<body link=white alink=white vlink=white  style="background-image: url('../Images/bg.JPG'); width: 71%; position: fixed; height:auto; top: -65px; left: 10px; text-align:justify; font-family: 'Arial Narrow'; color: #800000; font-weight: bold;">
<center>
<div style="width:70%; border:solid 1px; border-color=#aa0000; height: 100%">
<jsp:include page="top.jsp"/>
<div style="float:left; width:200px; height:400px">
&nbsp;&nbsp;&nbsp;
<marquee direction=down vspace=0px height=400px loop=-1>
<img src="../Images/dr-e-12.jpg" width=100 height=100>
<img src="../Images/I4.jpg" width=100 height=100>
<img src="../Images/b31c10detail_Thumb.jpg" width=100 height=100>
<img src="../Images/dvine-collection_graphic-bottom.jpg" width=100 height=100>
<img src="../Images/0c418ddetail_Thumb.jpg" width=100 height=100>
</marquee>

</div>
<font size=6>Welcome to GRT Jwellers Administration Site</font>
<img src="../Images/gg.jpg" name="slide" height=350 width=600>
<script>
<!--
//variable that will increment through the images
var step=1;
function slideit(){
//if browser does not support the image object, exit.
if (!document.images)
return;
document.images.slide.src=eval("image"+step+".src");
if (step<3)
step++;
else
step=1;
//call function "slideit()" every 2.5 seconds
setTimeout("slideit()",3000);
}
slideit();
//-->
</script>

<br>
<br>

</div>
</center>
</body>

</html>
