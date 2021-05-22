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
   <video src="https://vod-progressive.akamaized.net/exp=1621679592~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2499%2F19%2F487499986%2F2185444134.mp4~hmac=8a7a3bda53dfb2d4842ae43df084d82153bf2bbdc020a07856e70ad619c0bfbf/vimeo-prod-skyfire-std-us/01/2499/19/487499986/2185444134.mp4?filename=Road+-+57993.mp4" autoplay muted loop></video>
         
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