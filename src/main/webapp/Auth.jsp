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

<div class="video-bg">
   <video src="https://r210105.kujo-jotaro.com/naruto/1/1.480.1f89a08c65b0c303.mp4?hash1=c39e36ed3ef222a1e8fceaca738872fd&hash2=46a0306a84a211731e83dc1736c29505" type="video/mp4" autoplay muted loop>d</video>
         
   <div class="effects"></div>
   
   <div class="video-bg__content">  
       <p>Калькулятор отделочных работ!</p>
   </div>
   </div>












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