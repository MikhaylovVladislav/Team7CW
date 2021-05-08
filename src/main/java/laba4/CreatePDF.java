package laba4;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.stream.Stream;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class CreatePDF {
	

	
    public CreatePDF() {
    	
    }
    public void Create(String numberpdf) {
      	
    	Document document = new Document(); //ñîçäàíèå êëàññà Document
		try {
			//  /var/apache-tomcat-9.0.39/webapps/CreatePDF/
			PdfWriter.getInstance(document, new FileOutputStream("Check.pdf"));
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			//String INPUTFILE = "/Check.pdf";
			//PdfReader reader = new PdfReader(getServletContex().getRealPath(INPUTFILE));
			//PdfWriter.getInstance(document, new FileOutputStream("\\src\\main\\webapp\\Check.pdf"));
			
			//InputStream inputStream = this.getClass().getResourceAsStream("/Check.pdf"); 
			//PdfWriter.getInstance(document, new FileOutputStream(inputStream));
			
			
		
			
			
		} catch (FileNotFoundException | DocumentException e) {
			e.printStackTrace();
		}
			
		document.open(); 
		
		BaseFont times = null;
		try {
			times = BaseFont.createFont("/fonts/times.ttf", "cp1251", BaseFont.EMBEDDED);
		} catch (DocumentException | IOException e) {
			e.printStackTrace();
		}
		
		String string_pdf = "Hello";
		Paragraph paragraph = new Paragraph();
	    paragraph.add(new Paragraph(string_pdf, new Font(times,14)));
	    
	    String string_pdf2 = "From Team 7";
	    paragraph.add(new Paragraph(string_pdf2, new Font(times,14)));
	
	    try {
			document.add(paragraph);
		} catch (DocumentException e1) {
			e1.printStackTrace();
		}
	    
	  //îðãàíèçàöèÿ ïåðåõîäà íà ñëåäóþùóþ ñòðîêó
		 paragraph.clear();
		 String string_pdf3 = " ";
		 paragraph.add(new Paragraph(string_pdf3, new Font(times,14)));
		 
		 try {
				document.add(paragraph);
			} catch (DocumentException e1) {
				e1.printStackTrace();
			}
    	
		 
		 
		 
		 
		 
		 
		 
		 
	    /*
	  //äîáàâëåíèå èçîáðàæåíèÿ â pdf
	    URL url = getClass().getResource("/picture/ugatu.png");
	    Image img = null;
		try {
			img = Image.getInstance(url.toString());
			
			
		} catch (BadElementException e2) {
			
			e2.printStackTrace();
		} catch (MalformedURLException e2) {
			
			e2.printStackTrace();
		} catch (IOException e2) {
			
			e2.printStackTrace();
		}
		
		img.setAbsolutePosition(90, 500); //ïîçèöèîíèðîâàíèå èçîáðàæåíèÿ â PDF
		
		try {
				document.add(img);
			} catch (DocumentException e) {
				e.printStackTrace();
			}
	    
	    
		 //îðãàíèçàöèÿ ïåðåõîäà íà ñëåäóþùóþ ñòðîêó
		 paragraph.clear();
		 String string_pdf3 = " ";
		 paragraph.add(new Paragraph(string_pdf3, new Font(times,14)));
		 
		 try {
				document.add(paragraph);
			} catch (DocumentException e1) {
				e1.printStackTrace();
			}
	    */
		 
		 
		 
		 
		 
		 
		
		//äîáàâëåíèå òàáëèöû
		 PdfPTable table = new PdfPTable(4); //ñîçäàíèå òàáëèöû ñ 4 ñòîëáöàìè
		 addHeader(table);
		 addRows(table);
		 
		 try {
			document.add(table);
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	    
	    document.close(); //çàêðûòèå è ñîõðàíåíèå äîêóìåíòà PDF
    }
    
private void addRows(PdfPTable table) {
		
		//çàïîëíåíèå òàáëèöû ââîäèìûìè çíà÷åíèÿ â òåêñòîâûå ïîëÿ íà ãëàâíîé ôîðìå
		String cell1 = CalcPDF.SrokGet;
		String cell2 = CalcPDF.Usl1Get;
		String cell3 = CalcPDF.Usl2Get;
		String cell4 = CalcPDF.Usl3Get;
		String cell5 = CalcPDF.Usl4Get;
		String cell6 = CalcPDF.Usl5Get;
		String cell7 = CalcPDF.Usl6Get;
		String cell8 = CalcPDF.Usl7Get;
		String cell9 = CalcPDF.Usl8Get;
		String cell10 = CalcPDF.Usl9Get;
		String cell11 = CalcPDF.Usl10Get;
		String cell12 = CalcPDF.Usl11Get;
		String cell13 = CalcPDF.Usl12Get;
		String cell14 = CalcPDF.PromoGet;

				
		table.addCell(cell1);
	    table.addCell(cell2);
	    table.addCell(cell3);
	    table.addCell(cell4);
		table.addCell(cell5);
	    table.addCell(cell6);
	    table.addCell(cell7);
	    table.addCell(cell8);
		table.addCell(cell9);
	    table.addCell(cell10);
	    table.addCell(cell11);
	    table.addCell(cell12);
	    table.addCell(cell13);
	    table.addCell(cell14);
		
	    //âûøå äîëæåí áûòü òåêñò íà ðóññêîì ÿçûêå, êàê åãî âûâåñòè ìîæíî ïîñìîòðåòü â ñïðàâêå.в
	}

private void addHeader(PdfPTable table) {
	Stream.of("Srok", "Usl1", "Usl2", "Usl3", "Usl4", "Usl5", "Usl6", "Usl7", "Usl8", "Usl9", "Usl10", "Usl11", "Usl12", "Calc")
      .forEach(columnTitle -> {
        PdfPCell header = new PdfPCell();
        header.setBackgroundColor(BaseColor.LIGHT_GRAY);
        header.setBorderWidth(2);
        header.setPhrase(new Phrase(columnTitle));
        table.addCell(header);
    });
}
}
