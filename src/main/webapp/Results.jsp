<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Результат</title>
<style>
   body {
    -moz-background-size: 100%; /* Firefox 3.6+ */
    -webkit-background-size: 100%; /* Safari 3.1+ и Chrome 4.0+ */
    -o-background-size: 100%; /* Opera 9.6+ */
    background-size: 100%; /* Современные браузеры */
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
  </style>
</head>



<body>

<fieldset class = "com">

<fieldset>
 <legend> Итоговый рассчет </legend>
<p style="color:#black"><strong>Подготовка стен, потолков под финиш:</strong> ${first_result1}</p>
<p style="color:#black"><strong>Стоимость ремонта:</strong> ${result1}</p>
</fieldset>
<fieldset>

<legend> Загрузка данных в PDF </legend>

<h1 class="headline">Файл PDF создан. Нажмите на кнопку, чтобы скачать.</h1>
<p><strong>Number:</strong> ${Number}</p>
<p><strong>Group:</strong> ${Group}</p>
<p><strong>FIO:</strong> ${FIO}</p>
<p><strong>Points:</strong> ${Points}</p>

<a href="/CreatePDF/Check.pdf"> Открыть PDF-файл</a>
<a href="/CreatePDF/Check.pdf" download> Скачать PDF-файл</a>



</fieldset>

<form action="${pageContext.request.contextPath}/FaceCalc.jsp">
    <input type="submit" name="back" value="Назад">
    </form>

</fieldset>




</body>
</html>