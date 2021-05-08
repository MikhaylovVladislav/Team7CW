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

<p style="color:#black"><strong>Стоимость ремонта:</strong> ${result5}</p>
</fieldset>
<fieldset>

<legend> Загрузка данных в PDF </legend>

<h1 class="headline">Файл PDF создан. Нажмите на кнопку, чтобы скачать.</h1>
<p><strong>Srok:</strong> ${Srok}</p>
<p><strong>Usl1:</strong> ${Usl1}</p>
<p><strong>Usl2:</strong> ${Usl2}</p>
<p><strong>Usl3:</strong> ${Usl3}</p>
<p><strong>Usl4:</strong> ${Usl4}</p>
<p><strong>Usl5:</strong> ${Usl5}</p>
<p><strong>Usl6:</strong> ${Usl6}</p>
<p><strong>Usl7:</strong> ${Usl7}</p>
<p><strong>Usl8:</strong> ${Usl8}</p>
<p><strong>Usl9:</strong> ${Usl9}</p>
<p><strong>Usl10:</strong> ${Usl10}</p>
<p><strong>Usl11:</strong> ${Usl11}</p>
<p><strong>Usl12:</strong> ${Usl12}</p>
<p><strong>Promo:</strong> ${Promo}</p>

<a href="/CreatePDF/Check.pdf"> Открыть PDF-файл</a>
<a href="/CreatePDF/Check.pdf" download> Скачать PDF-файл</a>



</fieldset>

<form action="${pageContext.request.contextPath}/FaceCalc.jsp">
    <input type="submit" name="back" value="Назад">
    </form>

</fieldset>




</body>
</html>