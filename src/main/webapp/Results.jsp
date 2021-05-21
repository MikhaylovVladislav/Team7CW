<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style1.css">
<title>Результат</title>
<style>
   body {
    -moz-background-size: 150%; /* Firefox 3.6+ */
    -webkit-background-size: 150%; /* Safari 3.1+ и Chrome 4.0+ */
    -o-background-size: 150%; /* Opera 9.6+ */
    background-size: 150%; /* Современные браузеры */
     margin: 180px; 
        background:${col};
   }
   
  
fieldset {

  background-color: LemonChiffon;
width: 820px; margin:  5px auto;

}

fieldset.com {

  background-color: LemonChiffon;
width: 800px; margin:  5px auto;

}

legend {
  background-color: gray;
  color: white;
  padding: 5px 10px;

}

input {
  margin: 30px;
}
  </style>
  
</head>



<body bgcolor="#4682B4">

<fieldset class = "com">

<fieldset>
 <legend> Итоговый рассчет </legend>

<p style="color:#black"><strong>Стоимость ремонта:</strong> ${result5}</p>
</fieldset>
<fieldset>

<legend>Подробная информация о приобретенных отделочных работах!</legend>

<table id="table">
  <thead>
    <tr>
      <th align="left">Номер услуги</th>
      <th>Услуга</th>
      <th>Стоимость за услугу</th>
    </tr>
  </thead>
  
  <tbody>  
    <tr>
      <td><font color="#4B0082">№1</font></td>
      <td>Подготовка стен, потолков под финиш</td>
      <td>${Usl1}</td>  
    </tr>
    
  
    <tr>
      <td><font color="#4B0082">№2</font></td>
      <td>Оклейка обоями</td>
      <td>${Usl2}</td>     
    </tr>
    
    <tr>
      <td><font color="#4B0082">№3</font></td>
      <td>Покраска стен, потолков</td>
      <td>${Usl3}</td>        
    </tr>
    
    <tr>
      <td><font color="#4B0082">№4</font></td>
      <td>Шумоизоляция стен</td>
      <td>${Usl4}</td>    
    </tr>
    
    <tr>
      <td><font color="#4B0082">№5</font></td>
      <td>Эскизный проект перепланировки</td>
      <td>${Usl5}</td>    
    </tr>
    
    <tr>
      <td><font color="#4B0082">№6</font></td>
      <td>Штукатурка стен, потолков</td>
      <td>${Usl6}</td>      
    </tr>
    
    <tr>
      <td><font color="#4B0082">№7</font></td>
      <td>Очистка поверхностей от старых покрытий</td>
      <td>${Usl7}</td>      
    </tr>
    
    <tr>
      <td><font color="#4B0082">№8</font></td>
      <td>Шпатлевка стен, потолков</td>
      <td>${Usl8}</td>      
    </tr>
    
    <tr>
      <td><font color="#4B0082">№9</font></td>
      <td>Нанесение декоративных покрытий</td>
      <td>${Usl9}</td>    
    </tr>
    
    <tr>
      <td><font color="#4B0082">№10</font></td>
      <td>Облицовка плиткой стен</td>
      <td>${Usl10}</td>     
    </tr>
    
    <tr>
      <td><font color="#4B0082">№11</font></td>
      <td>Укладка ламината</td>
      <td>${Usl11}</td>      
    </tr>
    
    <tr>
      <td><font color="blue">№12</font></td>
      <td>Оклейка панелями потолок</td>
      <td>${Usl12}</td>      
    </tr>
    
    <tr>
      <td><font color="#FF8C00">Your promo</font></td>
      <td> </td>
      <td>somethink ${Promo}</td>         
    </tr>
    
    <tr>
      <td><font color="#DEB887"></font></td>
      <td></td>
      <td></td>
    </tr>
    
  </tbody>
</table>

</fieldset>
<button type="button" name="Back" onclick="history.back()">Назад</button>
</fieldset>


<!-- Создание загрузки пдф-файлика и его просмотра.ю -->

<center><button onclick="generate()">Скачать PDF.</button></center>






<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/2.3.5/jspdf.plugin.autotable.js"></script>

<script>
 function generate() {
      var doc = new jsPDF('p', 'pt');

      var elem = document.getElementById('table');
      var imgElements = document.querySelectorAll('#table tbody img');
      var data = doc.autoTableHtmlToJson(elem);
      var images = [];
      var i = 0;
      doc.autoTable(data.columns, data.rows, {
        bodyStyles: {rowHeight: 30},
        drawCell: function(cell, opts) {
          if (opts.column.dataKey === 14) {
            images.push({
              url: imgElements[i].src,
              x: cell.textPos.x,
              y: cell.textPos.y
            });
            i++;
          }
        },
        addPageContent: function() {
          for (var i = 0; i < images.length; i++) {
            doc.addImage(images[i].url, images[i].x, images[i].y, 20, 20);
          }
        }
      });

      doc.save("Ваш пдф-файл.pdf");
    }
</script>

<p>Вы можете послушать музыку, пока смотрите ваши расходы ^_^ :</p>

<audio src="https://d2.cdnpush.com/mp3/0c83e093cc950757f6cce90bcdd949d1.mp3" controls autoplay loop></audio>



</body>
</html>