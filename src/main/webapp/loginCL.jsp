<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>loginCL.jsp页面</title>
</head>
<body style="background:lemonchiffon">
<pre>
    <% request.setCharacterEncoding("GB2312");%>
    <jsp:useBean id="uu" class = "org.easybooks.test.model.vo.UserTable"/>
    <%-- <jsp:setProperty name="id" property="属性名" value="值"/> 或者
         <jsp:setProperty name="id" property="属性名" param="参数名"/>
        (1)name属性指定JavaBean对象名，与useBean标准动作中的id相对应
        (2)property属性：表示要设置JavaBean中的哪个属性。如果property的值是“*”，则表示所有名字和Bean属性名字匹配的请求参数都将传递给相应的属性setter方法
        (3)value属性：可选，用来指定Javabean属性的值
        (4)param属性：param可选。用于指定那个请求参数作为JavaBean属性的值。如果当前请求没有参数，则社么事情也不
        value和param不能同时使用
        举例：
        <jsp:useBean id="user" class="com.hkd.test.UserInfo">
        <jsp:useBean name="user" property="uname" value="tom"/>
        <jsp:useBean name="user" property="pwd" value=m123"/>
        </jsp:useBean>
        这样设置后，user对象就完成了初始化。
     --%>
    <jsp:setProperty name="uu" property="*"/>
    <!--在生成uu之后，似乎直接初始化了uu，也就是uu的属性已经确定了-->
    用户名：<jsp:getProperty name="uu" property="username"/>
    密码：<jsp:getProperty name="uu" property="password"/>
    <%=uu.getUsername()%>
    <%=uu.getId()%>
    <tr><%=uu.getPassword()%></tr>
    你好,我是你爹
</pre>
</body>
</html>