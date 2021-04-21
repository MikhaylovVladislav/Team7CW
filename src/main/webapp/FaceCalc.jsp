<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Калькулятор ремонта</title>
</head>
<body>
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

</body>
</html>