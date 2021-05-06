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
<p style="color:#black"><strong>Для теста:</strong> ${first_result1}</p>
<p style="color:#black"><strong>Стоимость ремонта:</strong> ${result1}</p>
</fieldset>
<fieldset>
<form action="${pageContext.request.contextPath}/FaceCalc">
    <input type="submit" name="sign" value="Назад">
    </form>
  
</fieldset>



</fieldset>




</body>
</html>