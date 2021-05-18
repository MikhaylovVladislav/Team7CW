<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<title>Authorization</title>
<style>

    body {
    margin: 100px; 
     background-color: ${col};
   }
  
fieldset {

  background-color: #eeeeee;
width: 500px; margin:  5px auto;

}

fieldset.com {

  background-color: #D3D3D3;
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
 <fieldset class="com">
   <form action="${pageContext.request.contextPath}/JavaCalc" method="post">
<fieldset>
 <legend>Авторизация</legend>

   <label for="first" style="color:##000000" >Логин:</label>
        <input type="text" name="first" id="first" value="${first}">
        <hr>
        <label for="second" style="color:##000000" >Пароль:</label>
        <input type="text" name="second" id="second" value="${second}">

 
</fieldset>
 <input type="submit" name="sign" value="Авторизоваться">
</form>
</fieldset>
</body>
</html>