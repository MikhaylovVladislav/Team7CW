<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authorization</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/JavaCalc" method="post">
<fieldset>
 <legend>Авторизация</legend>
 <label>Логин<input type="text" required></label>
 <label>Пароль<input type="password" required></label>
 <input type="submit" name="sign" value="Авторизоваться">

</fieldset>
 </form>
</body>
</html>