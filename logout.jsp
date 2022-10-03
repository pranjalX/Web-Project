<%-- 
    Document   : logout
    Created on : 24 Jun, 2022, 6:20:22 PM
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
        <%session.invalidate();%>
        
        <jsp:forward page="index.jsp" />
    </body>
</html>
