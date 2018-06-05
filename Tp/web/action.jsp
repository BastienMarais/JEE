<%-- 
    Document   : action
    Created on : 30 mai 2018, 10:33:59
    Author     : bmarais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion...</title>
    </head>
    <body>
        <%
          if(request.getParameter("login").equals("user") && request.getParameter("mdp").equals("user" )){
              RequestDispatcher disp = request.getRequestDispatcher("user.jsp");
              request.setAttribute("test","OK");
              disp.forward(request,response);
          }
          else if(request.getParameter("login").equals("admin") && request.getParameter("mdp").equals("admin" )){
              RequestDispatcher disp = request.getRequestDispatcher("admin.jsp");
              disp.forward(request,response);
          }
          else {
              RequestDispatcher disp = request.getRequestDispatcher("error.jsp");
              disp.forward(request,response);
          }
        %>
    </body>
</html>
