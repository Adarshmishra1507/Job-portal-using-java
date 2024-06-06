<%-- 
    Document   : index
    Created on : 12 May, 2024, 5:46:56 PM
    Author     : Brijesh_Mishra
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if (session.getAttribute("jobseekerid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Job Portal</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <script src="../js/jquery.min.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>

        <%@include file="nav.jsp"%>
        <div class="container">
            <div class="row">
                <div class="col-2">
                </div>  
                <div class="col-8">
                    
                </div>
                <div class="col-2">
                </div>
            </div>
           
        </div>
    </body>
</html>
<% }%>