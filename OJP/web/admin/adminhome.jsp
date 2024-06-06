<%-- 
    Document   : index
    Created on : 12 May, 2024, 5:46:56 PM
    Author     : Brijesh_Mishra
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AMC</title>
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
                    <h2 style="text-align: center;color:blue">Add News</h2>
                    <form class="form-group" action="addnews.jsp" method="post">
                        <table class="table" style="margin: auto;">
                            <tr>
                                <td>Enter New Text</td>
                                <td>
                                    <textarea name="newstext" required class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-primary">Add News</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="col-2">
                </div>
            </div>
           <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <h2 style="color:blue;text-align:center;">List of News</h2>
                    <table class="table table-bordered" style="margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>News</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            ResultSet rs=db.select("select * from adminapp_news");
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("newstext")%></td>
                            <td><%=rs.getString("newsdate")%></td>                            
                            <td>
                                <a href="delnews.jsp?id=<%=rs.getString("id")%>">
                                    <button type="button" class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                        <%  }  %>
                    </table>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
    </body>
</html>
<% }%>