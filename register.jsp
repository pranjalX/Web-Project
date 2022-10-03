<%-- 
    Document   : register
    Created on : 22 Jun, 2022, 5:37:29 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            body{
                background-image: url("https://source.unsplash.com/user/erondu/1600x900");
            }
            .registercontainer{
                width: 100%;
                height: auto;
                text-align: center;
                padding: 60px 10px 15px;
                border: 1px solid black;
                

            }
            
        </style>
    </head>
    <body>
        <div class="registercontainer">
            <form action="register" method="post">
                <label>Full Name</label><br/>
                <input type="text" placeholder="Enter Full Name" name="fname"><br/>
                
                <label>User Name</label><br/>
                <input type="text" placeholder="Enter User Name" name="uname"><br/>
                
                <label>Email</label><br/>
                <input type="email" placeholder="Enter Mail" name="email"><br/>
                
                <label>Password</label><br/>
                <input type="password" placeholder="Enter Password" name="pass"><br/>
                
                
                <label>Confirm Password</label><br/>
                <input type="password" placeholder="Confirm Password" name="cnfpass"><br/>
                <span style="display: none;"> Both the password doesn't match </span>
                <!--<label>Full Name:</label><br/> -->
                <!--<input type="text" placeholder="Enter Full Name" name="fname"><br/> -->
                
                <input style="background-color: red;  " type="submit" value="REGISTER"><br/>
            </form>
            
            
        </div>
    </body>
</html>
