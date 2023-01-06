<%-- 
    Document   : deleteevent
    Created on : 10 NOV, 2022, 8:01:03 PM
    Author     : AMAN KUMARI
--%>
 

<%@page import="mypack.DbManager"%>
<% 
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from events where email='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Event is deleted! Successfully...');window.location.href='../facultyhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Event is not deleted!');window.location.href='../facultyhome.jsp';</script>");
    }
%>


