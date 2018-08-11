<%-- 
    Document   : logout
    Created on : Oct 5, 2017, 2:30:38 PM
    Author     : HP
--%>

<%
session.setAttribute("name",null);
session.setAttribute("id",null);
response.sendRedirect("index.jsp");

%>