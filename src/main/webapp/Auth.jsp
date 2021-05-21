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
<body>

<div class="video-bg">
   <video src="https://vod-progressive.akamaized.net/exp=1621592522~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4327%2F20%2F521635037%2F2436722604.mp4~hmac=b50393384bb49eb02bd98223a3741dfb15b2e3f1b671c52b3b07a80e92aecf24/vimeo-prod-skyfire-std-us/01/4327/20/521635037/2436722604.mp4?filename=Lake+-+67201.mp4" autoplay muted loop></video>
         
   <div class="effects"></div>
   
   <div class="video-bg__content">  
       <p>Калькулятор отделочных работ!!!</p>
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

<fieldset><b>Команда разработчиков данного калькулятора:</b>
     <u><p style="color:#8B0000">1) Михайлов Владислав, ПИ-221</p></u>
     <p style="color:#C71585"><u>2) Тахаев Арсений, ПИ-221</u></p>
     <p style="color:#191970"><u>3) Боголюбов Максим, ПИ-221</u></p>
     <p style="color:#006400"><u>4) Белоусов Артем, ПИ-221</u></p>  
         
     </fieldset>







</body>
</html>