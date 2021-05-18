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
    background:${col};
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
<p style="color:#black"><strong>Пользователь:</strong>${result}</p>

<fieldset>
 <legend> Состояние строения </legend>
 <form action="CalcPDF" method="post" >
<select id="Sost" name="Sost">
  <option value="1">Исправное состояние</option>
  <option value="2">Работоспособное состояние</option>
    <option value="3">Ограниченно работоспособное состояние</option>
  <option value="4">Недопустимое состояние состояние</option>
   <option value="5">Аварийное состояние</option>
</select>
</form>
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
 <form action="${pageContext.request.contextPath}/JavaPDF" method="post"> 
<fieldset>
 <legend> Услуги </legend>

 <div class="algblock">
 

<label>Подготовка стен, потолков под финиш<input type="number" name="Usl1" id="Usl1" value="${Usl1}"></label>
</div>
<div class="algblock">
<label>Оклейка обоями<input type="number" name="Usl2" id="Usl2" value="${Usl2}" ></label>
</div>
<div class="algblock">
<label>Покраска стен, потолков<input type="number" name="Usl3" id="Usl3" value="${Usl3}" ></label>
</div>
<div class="algblock">
<label>Шумоизоляция стен<input type="number" name="Usl4" id="Usl4" value="${Usl4}"></label>
</div>

<div class="algblock">
<label>Эскизный проект перепланировки<input type="number" name="Usl5" id="Usl5" value="${Usl5}" ></label>
</div>
<div class="algblock">
<label>Штукатурка стен, потолков<input type="number" name="Usl6" id="Usl6" value="${Usl6}" ></label>
</div>
<div class="algblock">
<label>Очистка поверхностей от старых покрытий<input type="number" name="Usl7" id="Usl7" value="${Usl7}" ></label>
</div>
<div class="algblock">
<label>Шпатлевка стен, потолков<input type="number" name="Usl8" id="Usl8" value="${Usl8}" ></label>
</div>
<div class="algblock">
<label>Нанесение декоративных покрытий<input type="number" name="Usl9" id="Usl9" value="${Usl9}" ></label>
</div>
<div class="algblock">
<label>Облицовка плиткой стен<input type="number" name="Usl10" id="Usl10" value="${Usl10}" ></label>
</div>
<div class="algblock">
<label>Укладка ламината<input type="number" name="Usl11" id="Usl11" value="${Usl11}" ></label>
</div>
<div class="algblock">
<label>Оклейка панелями потолок<input type="number" name="Usl12" id="Usl12" value="${Usl12}"  ></label>
</div>
</fieldset>

<fieldset>
 <legend> Промокод </legend>
<label>Введите промокод<input type="text" name="Promo" id="Promo" value="${Promo}" ></label>

</fieldset>
    
     <fieldset  ${hid}>
<fieldset ${hid}>
 <legend>Панель администратора</legend>

   <label for="Kfpromo" style="color:##000000" >Коэффицент промокода:</label>
        <input type="text" name="Kfpromo" id="Kfpromo" value="${Kfpromo}">
        <hr>
        <label for="second" style="color:##000000" >Выберите тему:</label>
<div>
    <input type="radio" name="1"  value="a">
    <label for="contactChoice3">Светлая </label>

    <input type="radio" name="1" value="b">
    <label for="contactChoice4">Темная </label>
  </div>




<!--form action="${pageContext.request.contextPath}/FaceCalc.jsp">
    <input type="submit" name="save" value="Сохранить">
    </form-->
<button type="submit" name="Save"  onclick="return false">Сохранить</button>
</fieldset>
</fieldset>
     
     
    <input type="submit" name="sign" value="Вычислить">

</form>

<form action="${pageContext.request.contextPath}/Panel.jsp">
    <input type="submit" name="panel" value="Панель администратора" ${hid}>
    </form>

<form action="${pageContext.request.contextPath}/Auth.jsp">
    <input type="submit" name="exit" value="Выйти">
    </form>
    
    
</fieldset>




</body>
</html>