<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Login</title></head>
<body>
<g:form action="authenticate" method="post">
  <dl>
    <dt>Username:</dt>
    <dd><g:textField name="username"/></dd>
    <dt>Password:</dt>
    <dd><input type="password" name="password"/></dd>
  </dl>
  <g:submitButton name="login" value="Login"/>
</g:form>
</body>
</html>