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
width: 520px; margin:  5px auto;

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

.algblock {
float: right;
 padding-right: 20px; 
}
</style>
</head>
<body>


<fieldset class = "com">
<p style="color:#black"><strong>Пользователь:</strong> ${result}</p>
<form action="${pageContext.request.contextPath}/JavaCalcResult" method="post">
<fieldset>
 <legend> Состояние строения </legend>
<select>
  <option>Исправное состояние</option>
  <option>Работоспособное состояние</option>
    <option>Ограниченно работоспособное состояние</option>
  <option>Недопустимое состояние состояние</option>
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
    <label for="contactChoice1">Приоритетный </label>

    <input type="radio" id="contactChoice2"
     name="contact" value="phone">
    <label for="contactChoice2">Не приоритетный </label>
  </div>
  
</fieldset>

<fieldset>
 <legend> Услуги </legend>
 <div class="algblock">
<label>Подготовка стен, потолков под финиш<input type="number"></label>
</div>
<div class="algblock">
<label>Оклейка обоями<input type="number" name="first1" id="firs1t" value="${first1}" ></label>
</div>
<div class="algblock">
<label>Покраска стен, потолков<input type="number" ></label>
</div>
<div class="algblock">
<label>Шумоизоляция стен<input type="number" ></label>
</div>
<div class="algblock">
<label>Эскизный проект перепланировки<input type="number" ></label>
</div>
<div class="algblock">
<label>Штукатурка стен, потолков<input type="number" ></label>
</div>
<div class="algblock">
<label>Очистка поверхностей от старых покрытий<input type="number" ></label>
</div>
<div class="algblock">
<label>Шпатлевка стен, потолков<input type="number" ></label>
</div>
<div class="algblock">
<label>Нанесение декоративных покрытий<input type="number" ></label>
</div>
<div class="algblock">
<label>Облицовка плиткой стен<input type="number" ></label>
</div>
<div class="algblock">
<label>Укладка ламината<input type="number" ></label>
</div>
<div class="algblock">
<label>Оклейка панелями потолок<input type="number"  ></label>
</div>
</fieldset>

<fieldset>
 <legend> Промокод </legend>
<label>Введите промокод<input type="text" ></label>

</fieldset>

    <input type="submit" name="comp" value="Вычислить">
</form>
<form action="${pageContext.request.contextPath}/Auth.jsp">
    <input type="submit" name="exit" value="Выйти">
    </form>
</fieldset>

</body>
</html>