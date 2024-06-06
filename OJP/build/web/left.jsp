<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<div class="col-sm-4" style="min-height:600px;background-color: wheat;">
    <h3 style="text-align: center;color: red;">News and Events</h3> 
    <marquee direction="up" height="300" onmouseover="stop()" onmouseout="stop()" behavior="alternate">
    <%
        DbManager db = new DbManager();
        ResultSet rs = db.select("select * from adminapp_news");
        while (rs.next()) {
    %>
    <p style="color: blue;text-align: center;"><%=rs.getString("newstext")%></p>
    <%  }%>
    </marquee>
</div>