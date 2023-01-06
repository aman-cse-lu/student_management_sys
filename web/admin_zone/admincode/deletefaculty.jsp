<%-- 
    Document   : deletefaculty
    Created on : 10 NOV, 2022, 8:01:03 PM
    Author     : AMAN KUMARI
--%>

<%@page import="mypack.DbManager"%>
<% 
    String email=request.getParameter("email");
    DbManager dm=new DbManager();
    String query="delete from faculty where email='"+email+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Faculty Credential is deleted! Successfully...');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Faculty is not deleted!');window.location.href='../adminhome.jsp';</script>");
    }
%>


