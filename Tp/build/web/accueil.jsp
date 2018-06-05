<%-- 
    Document   : index
    Created on : 29 mai 2018, 09:59:58
    Author     : bmarais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Accueil</h1>
        
        <h3> Contexte de l'application : </h3>
        <% 
            out.print(request.getContextPath()); 
        %>  
    </body>
</html>
