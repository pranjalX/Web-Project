
package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.context.FacesContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class user extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
         //fetch from data
         
         Part part=request.getPart("file");
         System.out.println("in the user servlet");
         String filename = "";
         filename=part.getSubmittedFileName();
         System.out.println("Name of uploaded file is: " +filename);

        // String path= getServletContext().getRealPath("/"+"files"+File.separator+filename);
        String path="C:\\Users\\HP\\Documents\\NetBeansProjects\\registration\\build\\web\\files"+File.separator+filename;
         System.out.println("path is:" +path);
         InputStream is =part.getInputStream();
         boolean succs=uploadFile(is,path);
         System.out.println("ok till now");
         if(succs){
             System.out.println("File uploaded to this directory:" +path);
             out.println("File uploaded to this directory:" +path);
         }
         else{
             out.println("Error");
         }
         

         RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
                    rd.forward(request, response);
         
        }
    }
    
    public boolean uploadFile(InputStream is, String path){
        boolean test=false;
        try{
            byte[] byt= new byte[is.available()];
            is.read(byt);
            FileOutputStream fops= new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            test=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return test;
    }

    
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/registerdb?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","pranjalch8962");
            System.out.println("Connected user part");
            String sql= "insert into registerdb.data (username,uploaded_data) values(?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            Part part=request.getPart("file");
         
            String filename = "";
            String username=request.getParameter("uname");
            filename=part.getSubmittedFileName();
            ps.setString(1, username);
            ps.setString(2, filename);
            
            ps.executeUpdate();
            RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
            rd.forward(request, response);
                    
            
            
        }catch(Exception e){
    System.out.println("ERROR::" +e.getMessage());
    }
    }
}
