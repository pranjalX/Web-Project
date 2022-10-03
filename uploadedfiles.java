
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class uploadedfiles extends HttpServlet {

  
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
        //String username=request.getParameter("uname");

        try{
            String unameDB="";
            String fetched="";
            HttpSession session = request.getSession(true);
            String u1= (String) session.getAttribute("username");
            System.out.println(u1);
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/registerdb?useSSL=false","root","pranjalch8962");
            System.out.println("Connected uploadedfiles part");
           // String sql="select * from registerdb.data where username=?";
            PreparedStatement ps = con.prepareStatement("select * from registerdb.data where username=?");
            ps.setString(1, u1);
            ResultSet rs=ps.executeQuery();
            System.out.println("checkpoint1");
            while(rs.next()){
                unameDB=rs.getString("username");
                System.out.println("Database username::"+unameDB);
                if(u1.equals(unameDB)){
                    System.out.println("inside  uploadedfiles IF");
                 //   String sql1="select uploaded_data from data where username="+unameDB;
                 PreparedStatement ps1 = con.prepareStatement("select uploaded_data from registerdb.data where username=?");
                    ps1.setString(1, u1);
                    ResultSet rs1=ps1.executeQuery();
                    while(rs1.next())
                    {
                        fetched=rs1.getString(1);
                        System.out.println("data: " +fetched);
                        session.setAttribute("uploaded_files", fetched);
                        
                    }
                    
                    RequestDispatcher rd=request.getRequestDispatcher("uploadedfiles.jsp");
                    rd.forward(request, response);   
                }
                else{
                    System.out.println("Inside ELSE");
                    out.println("No Data Found");
                }   
            }
            
        }catch(Exception e){
        System.out.println("Error from uploadedfiles part:"+e.getMessage());
        }
    }
}
