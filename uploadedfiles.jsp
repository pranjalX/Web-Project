<%-- 
    Document   : uploadedfiles
    Created on : 27 Jun, 2022, 7:52:41 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Uploaded Files Are Shown On This Page</h1>
        <form action="uploadedfiles" method="post">
            <input type="submit" value="Click to check/Refresh">
            
        </form>
        <%
            session = request.getSession();
            String data= (String) session.getAttribute("uploaded_files");
            out.println(data);
            %>
            
        
        
        <li style="float: right;"><a href="user.jsp">Upload More</a></li>
        <table border="5" width="600" cellpadding="30">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
