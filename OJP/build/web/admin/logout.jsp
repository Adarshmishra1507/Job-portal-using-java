<%-- 
    Document   : logout
    Created on : 12 May, 2024, 8:36:11 PM
    Author     : Brijesh_Mishra
--%>
<%
    session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp'",2000);
            }
        </script>
    </head>
    <body onload="logout()" bgcolor="black">
        
    </body>
</html>
