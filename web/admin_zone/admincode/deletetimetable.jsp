<%-- 
    Document   : deletetimetable
    Created on : 10 NOV, 2022, 8:01:03 PM
    Author     : AMAN KUMARI
--%>

 

<%@page import="mypack.DbManager"%>
<% 
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from timetable where id='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Timetable is deleted! Successfully...');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Timetable is not deleted!');window.location.href='../adminhome.jsp';</script>");
    }
%>


