<%@page import="connect.DbManager"%>
<%
String id=request.getParameter("id");
DbManager db=new DbManager();
String query="delete from adminapp_news where id='"+id+"'";
if(db.insertUpdateDelete(query))
{
    out.print("<script>alert('News is deleted');window.location.href='adminhome.jsp';</script>");
}
else
{
    out.print("<script>alert('Database Error');window.location.href='adminhome.jsp';</script>");
}
%>