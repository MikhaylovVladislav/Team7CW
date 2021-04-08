<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Результат</title>
<style>
   body {
    background: url(https://mirgif.com/KARTINKI/ogon/ogon-2.jpg) no-repeat;
    -moz-background-size: 100%; /* Firefox 3.6+ */
    -webkit-background-size: 100%; /* Safari 3.1+ и Chrome 4.0+ */
    -o-background-size: 100%; /* Opera 9.6+ */
    background-size: 100%; /* Современные браузеры */
   }
  </style>
</head>



<body>
<h1 style="color:#FFA500">Полученная площадь</h1>
<h2 style="color:#FFA500">Ваши введеные данные:</h2>
<p style="color:#FFA500"><strong>Сторона равна:</strong> ${first_result}</p>
<p style="color:#FFA500"><strong>Результат:</strong> ${result}</p>

<form action="${pageContext.request.contextPath}/Form.jsp">
    <input type="submit" name="sign" value="Назад">
    </form>

</body>
</html>