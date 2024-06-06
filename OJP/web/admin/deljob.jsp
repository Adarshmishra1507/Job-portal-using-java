<%@page import="connect.DbManager"%>
<%
String id=request.getParameter("id");
DbManager db=new DbManager();
String query="delete from costomerzone_job where id='"+id+"'";
if(db.insertUpdateDelete(query))
{
    out.print("<script>alert('Job is deleted');window.location.href='jobs.jsp';</script>");
}
else
{
    out.print("<script>alert('Database Error');window.location.href='jobs.jsp';</script>");
}
%>