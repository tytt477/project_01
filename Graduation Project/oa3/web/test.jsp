<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/5/26
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String pic_nm= (String) request.getAttribute("pic_nm");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%=pic_nm%>
</body>
</html>
