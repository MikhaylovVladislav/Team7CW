<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style2.css">
<title>Authorization</title>
<style>

    body {
    margin: 100px; 
     background-color: ${col};
   }
  
fieldset {

  background-color: LemonChiffon;
width: 500px; margin:  5px auto;

}

fieldset.com {

  background-color: LemonChiffon;
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
<body bgcolor="#FFDAB9">

<div class="video-bg">
   <video src="https://vod-progressive.akamaized.net/exp=1621592522~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4327%2F20%2F521635037%2F2436722604.mp4~hmac=b50393384bb49eb02bd98223a3741dfb15b2e3f1b671c52b3b07a80e92aecf24/vimeo-prod-skyfire-std-us/01/4327/20/521635037/2436722604.mp4?filename=Lake+-+67201.mp4" autoplay muted loop></video>
         
   <div class="effects"></div>
   
   <div class="video-bg__content">  
       <p><u>Калькулятор отделочных работ</u></p>
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

<p align="left"><font color="#008000">Команда разработчиков (team7):</font></p>
 <div class="container">
    <div class="pulse">
        <p><font color="#FF4500">Михайлов В.А., ПИ-221</font></p>
    </div>
</div>
 
     
     <div class="cont">
    <div class="pul">
        <p><font color="#4B0082">Тахаев А.Г., ПИ-221</font></p>
    </div>
</div>
     
     <div class="conta">
    <div class="puls">
        <p><font color="#A52A2A">Боголюбов М.В., ПИ-221</font></p>
    </div>
</div>
     
     
     <div class="contai">
    <div class="pu">
        <p><font color="#DAA520">Белоусов А.Н., ПИ-221</font></p>
    </div>
</div>







</body>
</html>