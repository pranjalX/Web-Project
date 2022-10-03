<%-- 
    Document   : user
    Created on : 25 Jun, 2022, 4:55:54 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User JSP Page</title>
    </head>
    <body>
        <h3>Here you can upload your notes</h3>
        <div class="usercontainer">
            <form method="POST" action="user" enctype="multipart/form-data">
                <input type="file" name="file"/>
                <input type="text" placeholder="Enter Username" name="uname"/><br/>
                <input type="submit" value="Upload"/><br/>
                <li style="float: right;"><a href="uploadedfiles.jsp">Check Uploaded Files</a></li>
                <li style="float: next;"><a href="index.jsp">Go To Home Page</a></li>
                
            </form>
            
            
        </div>
    </body>
</html>
