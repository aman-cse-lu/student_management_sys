<%-- 
    Document   : discussioncode
    Created on :30 NOV, 2022, 4:19:37 PM
    Author     : AMAN KUMARI
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String discussionquestion=request.getParameter("discussionquestion"); 
    String student=session.getAttribute("studentid").toString();
    String complaintid=session.getAttribute("studentid").toString();
    DbManager dm=new DbManager();
    String query="select name from login where userid ='"+student+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("name");
    String posteddate=dm.getDate();
 
    query="insert into discussion(enrollmentid,askedby,questiontext,posteddate) values('"+complaintid+"','"+name+"','"+discussionquestion+"', '"+posteddate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Your question is now live and is logged!');window.location.href='../studenthome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Question is not logged!');window.location.href='../studenthome.jsp';</script>");
    }
%>
 
