<%-- 
    Document   : index
    Created on : 12 May, 2024, 5:46:56 PM
    Author     : Brijesh_Mishra
--%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
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
                   <h2 style="color:blue;text-align:center;">Change Password</h2>
                    <form class="form-group" action="changepwdcode.jsp" method="post">
                        <table class="table" style="width:60%;margin:auto">
                            <tr>
                                <td>Enter Old Password</td>
                                <td>
                                    <input type="password" name="oldpassword" placeholder="Old Password" required class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter New Password</td>
                                <td>
                                    <input type="password" name="newpassword" placeholder="New Password" required class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td>
                                    <input type="password" name="confirmpassword" placeholder="Confirm Password" required class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-primary">Change Password</button>
                                </td>
                            </tr>
                        </table>
                    </form>
        </div>
    </body>
</html>
<% } %>