<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор</title>
<style>
   body {
    background: url(https://regnum.ru/uploads/pictures/news/2016/12/10/regnum_picture_14813574061495217_normal.jpg) no-repeat;
    -moz-background-size: 120%; /* Firefox 3.6+ */
    -webkit-background-size: 120%; /* Safari 3.1+ и Chrome 4.0+ */
    -o-background-size: 120%; /* Opera 9.6+ */
    background-size: 120%; /* Современные браузеры */
   }
  </style>
</head>
	
<body bgcolor="#FFFF00">

<fieldset>
    <legend>Калькулятор ремонта</legend>
   
        <label for="first" style="color:#FFFF00" >Введите сторону равностороннего треугольника а:</label>
        <input type="text" name="first" id="first" value="${first}">
        <input type="submit" name="sign" value="Вычислить">
        </fieldset>
    
    <p align="right" style="color:#ffff00"><i>Made by Team7:</i></p>

    <p align="right" style="color:#FF4500"><b>1)Mikhaylov Vladislav</b></p>
    <p align="right" style="color:#FF4500"><b>2)Takhaev Arseniy<b></p>
    <p align="right" style="color:#FF4500"><b>3)Bogolubov Max<b></p>
    <p align="right" style="color:#FF4500"><b>4)Belousov Artem<b></p>
    
    <p style="color:#FFFF00">Формула, которая используются при вычислении площади:</p>
    <img src="https://www.ok-t.ru/studopediaru/baza7/3626748201704.files/image016.jpg" align="middle" alt="Площадь равна:(a*a*sqrt(3))/4" width="400 height="400" />
    
    
    
    
    </body>
</html>