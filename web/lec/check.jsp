<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/7/14
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int num1,num2=0,n;
    Integer str1=(Integer)session.getAttribute("number");
    Integer n1=(Integer)session.getAttribute("count");
    String str2=request.getParameter("guess");
    num1=Integer.valueOf(str1);
    n=Integer.valueOf(n1);
    if(str2!=null){
        num2=Integer.parseInt(str2);
    }
    if(num1==num2){
        session.setAttribute("count", new Integer(n));
        out.print("猜对了，您一共猜了"+(n+1)+"次，<a href='jisuan.jsp'>再玩一次</a>");
    }
    else if(num1>num2){
        n+=1;
        session.setAttribute("count", new Integer(n));
        out.print("猜小了，<a href='paly.jsp'>再猜一次</a>");
    }
    else if(num1<num2){
        n+=1;
        session.setAttribute("count", new Integer(n));
        out.print("猜大了，<a href='paly.jsp'>再猜一次</a>");
    }
    if(n==10){
%>
<script language="javascript" >
    alert("游戏结束");
    top.location='jisuan.jsp';
</script>
<%
    }
%>


</body>
<body>
<img width="100%" height="100%" src="33.jpg" style="position:absolute; left:0; top:0; z-index:-1;"/>

</body>
</html>
