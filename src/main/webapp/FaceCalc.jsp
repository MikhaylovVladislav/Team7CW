<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор ремонта</title>
<style>

    body {
    margin: 100px; 
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
<body bgcolor = "red">
<fieldset class = "com">

<fieldset>
 <legend> Состояние строения </legend>
<select>
  <option>Исправное состояние</option>
  <option>Работоспособное состояние</option>
    <option>Ограниченное состояние</option>
  <option>Недопустимое состояние</option>
   <option>Аварийное состояние</option>
</select>
</fieldset>

<fieldset>
 <legend> Класс ремонта </legend>
<select>
  <option>Эконом класс</option>
  <option>Комфорт класс</option>
  <option>Бизнес класс</option>
</select>
</fieldset>

<fieldset>
 <legend> Срок ремонта </legend>
<div>
    <input type="radio" id="contactChoice1"
     name="contact" value="email">
    <label for="contactChoice1">Приоритетный</label>

    <input type="radio" id="contactChoice2"
     name="contact" value="phone">
    <label for="contactChoice2">Не приоритетный</label>
  </div>
  
</fieldset>

<fieldset>
 <legend> Услуги </legend>
<label>Улсуга1<input type="number" required></label>
<hr>
<label>Улсуга2<input type="number" required></label>
<hr>
<label>Улсуга3<input type="number" required></label>
<hr>
<label>Улсуга4<input type="number" required></label>
<hr>
<label>Улсуга5<input type="number" required></label>
<hr>
<label>Улсуга6<input type="number" required></label>
</fieldset>

<fieldset>
 <legend> Промокод </legend>
<label>Введите промокод<input type="text" required></label>
</fieldset>


<input type="submit" name="gocom" value="Вычислить" style="margin-left: 50%">


</fieldset>

</body>
</html>