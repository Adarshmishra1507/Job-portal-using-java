<%@page import="connect.SmsSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if (request.getParameter("page").equals("jobseekerreg")) {
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String country = request.getParameter("country");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String exparea = request.getParameter("exparea");
        String contactno = request.getParameter("contactno");
        String experience=request.getParameter("experience");
        String emailaddress = request.getParameter("emailaddress");
        String password = request.getParameter("password");
        DbManager db = new DbManager();
        String query1 = "insert into recruitizapp_labour values('" + name + "','" + gender + "','" + address + "','" + country + "','" + state + "','" + city + "','"+exparea+"','"+contactno+"',curdate(),'"+experience+"','"+emailaddress+"')";
        String query2 = "insert into recruitizapp_login values('" + contactno + "','" + password + "','jobseeker')";
        if (db.insertUpdateDelete(query1)) {
            if (db.insertUpdateDelete(query2)) {
                out.print("<script>alert('Registration is done');window.location.href='index.jsp';</script>");
            }
        } else {
            out.print("<script>alert('Database Error');window.location.href='index.jsp';</script>");
        }
    } else if (request.getParameter("page").equals("login")) {
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        DbManager db = new DbManager();
        ResultSet rs = db.select("select usertype from recruitizapp_login where userid='" + userid + "' and password='" + password + "'");
        if (rs.next()) {
            String usertype = rs.getString("usertype");
            if (usertype.equals("jobseeker")) {
                session.setAttribute("jobseekerid", userid);
                response.sendRedirect("jobseeker/jobseekerhome.jsp");
            } 
            else if (usertype.equals("admin")) {
                session.setAttribute("adminid", userid);
                response.sendRedirect("admin/adminhome.jsp");
            }

        } else {
            out.print("<script>alert('Invalid User');window.location.href='login.jsp';</script>");
        }
    }
    else if(request.getParameter("page").equals("enquiry"))
    {
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String address=request.getParameter("address");
        String contactno=request.getParameter("contactno");
        String emailaddress=request.getParameter("emailaddress");
        String enquirytext=request.getParameter("enquirytext");
        DbManager db=new DbManager();
        SmsSender ss=new SmsSender();
        String query="insert into recruitizapp_enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"',curdate())";
        if(db.insertUpdateDelete(query))
        {
            ss.sendSms(contactno);
            out.print("<script>alert('Enquiry is saved');window.location.href='contactus.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Database Error');window.location.href='contactus.jsp';</script>");
        }
    }
%>