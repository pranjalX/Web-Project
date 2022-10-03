
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login extends HttpServlet {


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
        String username=request.getParameter("uname");
        String password=request.getParameter("pass");
        
        
        try{
            Connection con;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/registerdb?useSSL=false","root","pranjalch8962");
            System.out.println("Connected login part");
            String sql="select * from registerdb.register where username=? and password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
            
            String unameDB="";
            String passDB="";
            
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                unameDB=rs.getString("username");
                passDB=rs.getString("password");
                
                System.out.println("Database username::"+unameDB);
                System.out.println("Database password::"+passDB);
                
                if(username.equals(unameDB) && password.equals(passDB)){
                    System.out.println("inside IF");
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    
                    /*RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);*/
                    RequestDispatcher rd=request.getRequestDispatcher("selection.jsp");
                    rd.forward(request, response);
                    
                }
                else{
                    System.out.println("Inside ELSE");
                    
                    RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
                    rd.forward(request, response);
                }
            }
            
        }catch(Exception e){
        System.out.println("Error from login part:"+e.getMessage());
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
