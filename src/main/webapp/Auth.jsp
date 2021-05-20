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
   <video src="https://vod-progressive.akamaized.net/exp=1621538100~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2775%2F21%2F538877060%2F2554448076.mp4~hmac=3322fb3f63c208699c583a054cb6188d99b833c6f110d3bf422fab2393b8da0b/vimeo-prod-skyfire-std-us/01/2775/21/538877060/2554448076.mp4?filename=Waves+-+70796.mp4" autoplay loop></video>
         
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

<fieldset><b>Команда разработчиков данного калькулятора:</b>
     <p style="color:#8B0000">1) Михайлов Владислав, ПИ-221</p>
     <p style="color:#C71585">2) Тахаев Арсений, ПИ-221</p>
     <p style="color:#191970">3) Боголюбов Максим, ПИ-221</p>
     <p style="color:#006400">4) Белоусов Артем, ПИ-221</p>  
         
     </fieldset>







</body>
</html>