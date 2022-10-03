<%-- 
    Document   : login
    Created on : 24 Jun, 2022, 12:15:20 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            body{
                background-image: url("https://source.unsplash.com/user/erondu/1600x900");
            }
            .loginclass{
                width: 100%;
                height: auto;
                text-align: center;
                padding: 60px 10px 15px;
                border: 1px solid black;
                
                
            }
            
            
            
        </style>
            
    </head>
    <body>
        <div class="loginclass">
        <form action="login" method="post">
        <label>User Name</label><br/>
        <input type="text" placeholder="Enter User Name" name="uname"/><br/>
                
        <label>Password</label><br/>
        <input type="password" placeholder="Enter Password" name="pass"/><br/>
        
        <input type="submit" id="submit" value="LOGIN"><br/>
        </form>
            </div>
        
        
        </body>
</html>
