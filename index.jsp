<%-- 
    Document   : index
    Created on : 22 Jun, 2022, 5:40:46 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <style>
            .container{
                position: absolute;
                top: 0px;
                width: 100%;
                height: 80px;
                background: darkgray;
                
            }
           body, html {
           height: 100%;
            }

        * {
          box-sizing: border-box;
        }

        .bg-image {
         background-image: url("https://source.unsplash.com/user/erondu/1600x900");
         filter: blur(8px);
         -webkit-filter: blur(8px);
         height: 100%;

         background-position: center;
         background-repeat: no-repeat;
         background-size: cover;
}
    .bg-text {
           background-color: rgb(0,0,0);
           background-color: rgba(0,0,0, 0.4);
           color: white;
           font-weight: bold;
           border: 3px solid #f1f1f1;
           position: absolute;
           top: 50%;
           left: 50%;
           transform: translate(-50%, -50%);
           z-index: 2;
           width: 80%;
           padding: 20px;
           text-align: center;
        }
            body{
                
                
            }
            
            li{
                float: left;
                text-decoration: none;
                list-style: none;
                padding: 10px 10px 10px;
                font-size: 20px;
            }
            li a{
                color: white;
                text-decoration: none;
                font-size: 20px;
            }
            
            
        </style>
    </head>
     <body>
         <!-- background-image: url("https://source.unsplash.com/user/erondu/1600x900"); -->
        <div class="bg-image"></div>

        <div class="bg-text">
        <h1>NOTESPEDIA</h1>
        <p>All Your Notes At One Place</p>
        </div>
         

         
         <%
             String Name= (String) session.getAttribute("username");
             System.out.println("USENAME INDEX JSP: "+Name);
             
             if(Name==null){
             
             %>
         
         
        <div class="container">
            <nav>
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">CATEGORIES</a></li>
                    <li><a href="#">CONTACT</a></li>
                    <li><a href="#">ABOUT</a></li>
                    <li style="float: right;"><a href="login.jsp">LOGIN</a></li>
                    <li style="float:right;"><a href="register.jsp">REGISTER</a></li>
                </ul>
                
            </nav>
            
            
        </div>
             
             <%}else if(Name!=null){
%>
               <div class="container">
            <nav>
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">CATEGORIES</a></li>
                    <li><a href="#">CONTACT</a></li>
                    <li><a href="#">ABOUT</a></li>
                    <li style="float: right;"><a href="logout.jsp">LOGOUT</a></li>
                    <h5 style="color: floralwhite; font-size: 25px;">Welcome<%out.println("\t"+Name);%></h5>
                </ul>
                
            </nav>
            
            
        </div>
                    
                    <h1> </h1>



             
             <%
                 }
             
             
             %>
             
    </body>
</html>