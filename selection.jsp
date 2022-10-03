<%-- 
    Document   : selection
    Created on : 27 Jun, 2022, 8:03:08 AM
    Author     : HP
--%>
        <!-- if want to upload file go to user.jsp -->
        <!-- if want to see the uploaded files go to uploadedfiles.jsp -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selection Page</title>
        <style>
            body{
                background-image: url("https://source.unsplash.com/user/erondu/1600x900");
            }
            .registercontainer{
              /*  width: 100%;
                height: auto;
                text-align: center;
                padding: 60px 10px 15px;
                border: 1px solid black;*/
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
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
            li a{
                color: white;
                text-decoration: none;
                font-size: 20px;
            }
            li{
                padding: 10px 10px 10px;
            }
            
            
        </style>
    </head>
    <body>
        <div class="registercontainer">
            <nav>
                
                 <li style="float: top;"><a href="user.jsp">Upload Files</a></li>
                 <li style="float: next;"><a href="uploadedfiles.jsp">See Uploaded Files</a></li>
                 <li style="float: next;"><a href="index.jsp">Go To Home Page</a></li>
                 
            </nav>
        
        </div>

         
    </body>
</html>
