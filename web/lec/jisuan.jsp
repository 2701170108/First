<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/7/14
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算</title>
</head>
<button type="主页">  <A href="first.jsp">主页</A></button>
<body>
<h1 align="center">猜数字游戏</h1><br>
<p style="display:block;text-align:center;" size="24">游戏会给出1-100间的随机数字，请猜出这个数字。您有10次机会。</p><br>
<form action="paly.jsp">
    <p style="display:block;text-align:center;"><input type="submit" value="开始游戏"/></p>
</form>

<%
    int a=(int)(Math.random()*100+1);
    session.setAttribute("number",a);
    session.setAttribute("count", new Integer(0));
%>

</body>
<body>
<img width="100%" height="100%" src="33.jpg" style="position:absolute; left:0; top:0; z-index:-1;"/>

</body>
</html>
