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
<label>Подготовка стен, потолков под финиш<input type="number" required></label>
<hr>
<label>Оклейка обоями<input type="number" required></label>
<hr>
<label>Покраска стен, потолков3<input type="number" required></label>
<hr>
<label>Шумоизоляция стен<input type="number" required></label>
<hr>
<label>Эскизный проект перепланировки<input type="number" required></label>
<hr>
<label>Штукатурка стен, потолков<input type="number" required></label>
<hr>
<label>Очистка поверхностей от старых покрытий<input type="number" required></label>
<hr>
<label>Шпатлевка стен, потолков<input type="number" required></label>
<hr>
<label>Нанесение декоративных покрытий<input type="number" required></label>
<hr>
<label>Облицовка плиткой стен<input type="number" required></label>
<hr>
<label>Укладка ламината<input type="number" required></label>
<hr>
<label>Оклейка панелями потолок<input type="number" required></label>
</fieldset>

<fieldset>
 <legend> Промокод </legend>
<label>Введите промокод<input type="text" required></label>
</fieldset>


<input type="submit" name="gocom" value="Вычислить" style="margin-left: 50%">


</fieldset>

</body>
</html>