<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>loginCL.jsp页面</title>
</head>
<body>
    <% request.setCharacterEncoding("GB2312");%>
    <jsp:useBean id="uu" class = "org.easybooks.test.model.vo.UserTable"/>
    <jsp:setProperty name="uu" property="*"/>
    <%=uu.getUsername()%>
    <tr><%=uu.getPassword()%></tr>
    <%if(uu.CheckAccount(uu.getUsername(),uu.getPassword()) == 1){%>
        <jsp:forward page="welcome.jsp" />　
    <%}else{%>
        <jsp:forward page="error.jsp"/>
    <%}%>
</body>
</html>