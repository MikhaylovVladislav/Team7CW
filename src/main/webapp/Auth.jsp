<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authorization</title>
</head>
<body>
<fieldset>
 <legend>Авторизация</legend>
  <form action="${pageContext.request.contextPath}/JavaCalc" method="post">
 <label>Логин<input type="text" required></label>
 <label>Пароль<input type="email" required></label>
 <input type="submit" name="sign" value="Авторизоваться">
 </form>
</fieldset>
</body>
</html>