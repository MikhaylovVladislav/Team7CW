<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

  background-color: ${col1};
width: 820px; margin:  5px auto;

}

fieldset.com {

  background-color: ${col2};
width: 800px; margin:  5px auto;

}

legend {
  background-color: green;
  color: #0000FF;
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
      <th align="left">ID</th>
      <th>Name Work</th>
      <th>Price</th>
    </tr>
  </thead>
  
  <tbody>  
    <tr>
      <td><font color="#4B0082">№1</font></td>
      <td>name</td>
      <td>${Usl1}</td>  
    </tr>
    
  
    <tr>
      <td><font color="#4B0082">№2</font></td>
      <td>name</td>
      <td>${Usl2}</td>     
    </tr>
    
    <tr>
      <td><font color="#4B0082">№3</font></td>
      <td>name</td>
      <td>${Usl3}</td>        
    </tr>
    
    <tr>
      <td><font color="#4B0082">№4</font></td>
      <td>name</td>
      <td>${Usl4}</td>    
    </tr>
    
    <tr>
      <td><font color="#4B0082">№5</font></td>
      <td>name</td>
      <td>${Usl5}</td>    
    </tr>
    
    <tr>
      <td><font color="#4B0082">№6</font></td>
      <td>name</td>
      <td>${Usl6}</td>      
    </tr>
    
    <tr>
      <td><font color="#4B0082">№7</font></td>
      <td>name</td>
      <td>${Usl7}</td>      
    </tr>
    
    <tr>
      <td><font color="#4B0082">№8</font></td>
      <td>name</td>
      <td>${Usl8}</td>      
    </tr>
    
    <tr>
      <td><font color="#4B0082">№9</font></td>
      <td>name</td>
      <td>${Usl9}</td>    
    </tr>
    
    <tr>
      <td><font color="#4B0082">№10</font></td>
      <td>name</td>
      <td>${Usl10}</td>     
    </tr>
    
    <tr>
      <td><font color="#4B0082">№11</font></td>
      <td>name</td>
      <td>${Usl11}</td>      
    </tr>
    
    <tr>
      <td><font color="blue">№12</font></td>
      <td>name</td>
      <td>${Usl12}</td>      
    </tr>
    
    <tr>
      <td><font color="#FF8C00">Your promo</font></td>
      <td>name</td>
      <td>here  ${Promo} here</td>         
    </tr>
    
    <tr>
      <td><font color="#DEB887">All summ</font></td>
      <td>Gold for work</td>
      <td>${result5}</td>
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

<p>Музыка, для прослушивания</p>

<audio src="https://ru.muzmo.cc/get/cuts/4b/9a/4b9a3741942b527f1e4a1f2d5a298469/47828666/Linkin_Park_-_Faint_b128f0d162.mp3" controls></audio>

</body>
</html>