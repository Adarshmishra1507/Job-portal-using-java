<%@page import="connect.DbManager"%>
<%
String jobtitle=request.getParameter("jobtitle");
String jobdesc=request.getParameter("jobdesc");
DbManager db=new DbManager();
String query="insert into costomerzone_job(jobtitle,jobdesc, posteddate) values('"+jobtitle+"','"+jobdesc+"',curdate())";
if(db.insertUpdateDelete(query))
{
    out.print("<script>alert('Job is added');window.location.href='jobs.jsp';</script>");
}
else
{
    out.print("<script>alert('Database Error');window.location.href='jobs.jsp';</script>");
}
%>