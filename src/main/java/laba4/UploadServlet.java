package laba4;

import javax.servlet.ServletException;
import javax.servlet.annotation.HttpMethodConstraint;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import static javax.servlet.annotation.ServletSecurity.TransportGuarantee.CONFIDENTIAL;
 
@MultipartConfig
@WebServlet(name = "Upload", description = "UploadFile test servlet", urlPatterns = "/upload")
@ServletSecurity(httpMethodConstraints = {@HttpMethodConstraint(value = "POST", transportGuarantee = CONFIDENTIAL), @HttpMethodConstraint(value = "GET", transportGuarantee = CONFIDENTIAL)})
public class UploadServlet extends HttpServlet {
 
    private final void writeFile(String _path, InputStream _input){
        try (FileOutputStream fileOutputStream = new FileOutputStream(_path)) {
            int read = 0;
            byte[] bytes = new byte[1024];
            while ((read = _input.read(bytes)) != -1) fileOutputStream.write(bytes, 0, read);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
        Part filePart = request.getPart("file");
 
        String fileName;
        fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); //JSP 3.1
        //fileName = getFileName_JSP30(filePart); //JSP 3.0
 
        InputStream inputStream = filePart.getInputStream();
        System.out.println("Single Filename:: "+fileName);
        writeFile("C:\\files\\this_is_file__"+fileName, inputStream);
    }
 
    /**
     * IF JSP 3.0 USE THIS METHOD
     */
    private static String getFileName_JSP30(Part _part) {
        for (String cd : _part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
            }
        }
        return null;
    }
}