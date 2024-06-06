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
                <div class="col-2"></div>
                <div class="col-8">
                    <h2 style="text-align:center;">Add Jobs</h2>
                    <form class="form-group" method="post" action="jobcode.jsp">
                        <table class="table table-bordered" style="margin:auto">
                            <tr>
                                <td>Enter Job Title</td>
                                <td>
                                    <input type="text" name="jobtitle" required class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Job Description</td>
                                <td>
                                    <textarea name="jobdesc" required class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="col-2"></div>

            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <h2 style="color:blue;text-align:center;">List of Jobs</h2>
                    <table class="table table-bordered" style="margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>Job Title</th>
                            <th>Job Description</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            ResultSet rs=db.select("select * from costomerzone_job");
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("jobtitle")%></td>
                            <td><%=rs.getString("jobdesc")%></td>
                            <td><%=rs.getString("posteddate")%></td>
                            <td>
                                <a href="deljob.jsp?id=<%=rs.getString("id")%>">
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