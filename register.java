
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class register extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           
        }
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String fullname= request.getParameter("fname");
        String username= request.getParameter("uname");
        String email= request.getParameter("email");
        String password= request.getParameter("pass");
        String confirmpass= request.getParameter("cnfpass");
        try{
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/registerdb?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false","root","pranjalch8962");
            System.out.println("Connected");
            String sql= "insert into registerdb.register (fullname,username,email,password,confirmpass) values(?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.setString(1, fullname);
            ps.setString(2, username);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, confirmpass);
            ps.executeUpdate();
            RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
            
            
        }catch(Exception e){
    System.out.println("ERROR::" +e.getMessage());
    }
    }


}
