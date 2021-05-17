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



<body bgcolor="#008B8B">

<fieldset class = "com">

<fieldset>
 <legend> Итоговый рассчет </legend>

<p style="color:#black"><strong>Стоимость ремонта:</strong> ${result5}</p>
</fieldset>
<fieldset>

<legend> Загрузка данных в PDF </legend>

<h1 class="headline">Файл PDF создан. Нажмите на кнопку, чтобы скачать.</h1>
<p><strong>Srok:</strong> ${Srok}</p>
<p><strong>Подготовка стен, потолков под финиш:</strong> ${Usl1}</p>
<p><strong>Оклейка обоями:</strong> ${Usl2}</p>
<p><strong>Покраска стен, потолков:</strong> ${Usl3}</p>
<p><strong>Шумоизоляция стен:</strong> ${Usl4}</p>
<p><strong>Эскизный проект перепланировки:</strong> ${Usl5}</p>
<p><strong>Штукатурка стен, потолков:</strong> ${Usl6}</p>
<p><strong>Очистка поверхностей от старых покрытий:</strong> ${Usl7}</p>
<p><strong>Шпатлевка стен, потолков:</strong> ${Usl8}</p>
<p><strong>Нанесение декоративных покрытий:</strong> ${Usl9}</p>
<p><strong>Облицовка плиткой стен:</strong> ${Usl10}</p>
<p><strong>Укладка ламината:</strong> ${Usl11}</p>
<p><strong>Оклейка панелями потолок:</strong> ${Usl12}</p>
<p><strong>Promocode:</strong> ${Promo}</p>
<p><strong>Promocode:</strong> ${Kfpromo}</p>


<!-- Кнопка назад, для продолжения покупок -->
</fieldset>
<button type="button" name="Back" onclick="history.back()">Назад</button>
</fieldset>


<!-- Создание загрузки пдф-файлика и его просмотра.ю -->

<center><button onclick="generate()">Generate PDF</button></center>



<table id="table">
  <thead>
    <tr>
      <th>ID</th>
      <th>First name</th>
      <th>Страна</th>
      <th>Image</th>
    </tr>
  </thead>
  
  <tbody>
    <tr>
      <td align="right">1</td>
      <td>Arseniy</td>
      <td>jhenry1@theatlantic.com</td>
      <td>Russia</td>
      <td>mens</td>
    </tr>
  
    <tr>
      <td align="right">2</td>
      <td>man</td>
      <td>jhenry1@theatlantic.com</td>
      <td>Russia</td>
      <td>Ценаа</td>
    </tr>
    
    <tr>
      <td align="right">3</td>
      <td>app</td>
      <td>rwells2@constantcontact.com</td>
      <td><b>Russia</b>${result5}</td>     
    </tr>
    
    <tr>
      <td align="right">4</td>
      <td>ku</td>
      <td>jray3@psu.edu</td>
      <td>Russia</td>
    </tr>
    <tr>
      <td align="right">5</td>
      <td>adq</td>
      <td>jstephens4@go.com</td>
      <td>Russia</td>
    </tr>
  </tbody>
</table>

<pre>Gold for work</pre>
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
          if (opts.column.dataKey === 6) {
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

      doc.save("table.pdf");
    }
</script>




</body>
</html>