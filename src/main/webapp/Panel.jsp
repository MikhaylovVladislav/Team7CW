<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Panel</title>

<style>

    body {
    margin: 100px; 
   }
  
fieldset {

  background-color: #eeeeee;
width: 450px; margin:  5px auto;

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
<body bgcolor="#008B8B">
 <fieldset class="com">
   <form action="${pageContext.request.contextPath}/JavaCalc" method="post">
<fieldset disabled>
 <legend>Панель администратора</legend>

   <label for="Kfpromo" style="color:##000000" >Коэффицент промокода:</label>
        <input type="text" name="Kfpromo" id="Kfpromo" value="${Kfpromo}">
        <hr>
        <label for="second" style="color:##000000" >Выберите тему:</label>
<div>
    <input type="radio" id="White"
     name="White" value="email">
    <label for="contactChoice3">Светлая </label>

    <input type="radio" id="Black"
     name="Black" value="phone">
    <label for="contactChoice4">Темная </label>
  </div>

 
</fieldset>

<!--form action="${pageContext.request.contextPath}/FaceCalc.jsp">
    <input type="submit" name="save" value="Сохранить">
    </form-->
<button type="submit" name="Save" onclick="history.back()">Сохранить</button>


<!--form action="${pageContext.request.contextPath}/FaceCalc.jsp">
    <input type="submit" name="back" value="Назад">
    </form-->
<button type="button" name="Back" onclick="history.back()">Назад</button>

</form>
</fieldset>


</body>

</html>