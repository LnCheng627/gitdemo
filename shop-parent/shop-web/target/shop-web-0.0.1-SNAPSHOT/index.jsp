<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/11/6
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
  </head>
  <body>
  <form action="${pageContext.request.contextPath}/user/dologin" method="post">
    <p>用户名：<input type="text" name="xingming"/></p>
    <p>密码：<input type="password" name="userPwd"/></p>
    <p><input type="submit" value="提交"></p>
  </form>
  </body>
</html>
