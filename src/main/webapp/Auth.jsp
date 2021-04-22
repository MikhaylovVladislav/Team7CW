<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authorization</title>
<style>

    body {
    margin: 100px; 
   }
  
fieldset {

  background-color: #eeeeee;
width: 500px; margin:  5px auto;

}

legend {
  background-color: gray;
  color: white;
  padding: 5px 10px;

}

input {
  margin: 10px;
}
</style>
</head>
<body>
 
<fieldset>
 <legend>Авторизация</legend>
  <form action="${pageContext.request.contextPath}/JavaCalc" method="post">
   <label for="first" style="color:##000000" >Логин:</label>
        <input type="text" name="first" id="first" value="${first}">
        <label for="second" style="color:##000000" >Пароль:</label>
        <input type="text" name="second" id="second" value="${second}">
 <input type="submit" name="sign" value="Авторизоваться">
 </form>
</fieldset>

</body>
</html>