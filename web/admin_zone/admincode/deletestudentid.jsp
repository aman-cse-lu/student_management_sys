<%-- 
    Document   : deletestudentid
    Created on : 10 NOV, 2022, 8:01:03 PM
    Author     : AMAN KUMARI
--%>

<%@page import="mypack.DbManager"%>
<% 
    String enrollmentid=request.getParameter("enrollmentid");
    DbManager dm=new DbManager();
    String query="delete from register where enrollmentid='"+enrollmentid+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('StudentId is deleted! Successfully...');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('StudentId is not deleted!');window.location.href='../adminhome.jsp';</script>");
    }
%>

