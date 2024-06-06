<%@page import="connect.DbManager"%>
<%
String newstext=request.getParameter("newstext");
DbManager db=new DbManager();
String query="insert into adminapp_news(newstext, newsdate) values('"+newstext+"',curdate())";
if(db.insertUpdateDelete(query))
{
    out.print("<script>alert('News is added');window.location.href='adminhome.jsp';</script>");
}
else
{
    out.print("<script>alert('Database Error');window.location.href='adminhome.jsp';</script>");
}
%>